//
//  ViewController.m
//  GCDTimer
//
//  Created by Brooks on 2019/11/20.
//  Copyright © 2019 Brooks. All rights reserved.
//

#import "ViewController.h"
#import "GCDTimer.h"

void test()
{
    NSLog(@"%s - %@", __func__, [NSThread currentThread]);
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [GCDTimer execTask:^{
        NSLog(@"%s - %@", __func__, [NSThread currentThread]);
    }
                 start:2.0
              interval:1.0
               repeats:YES
                 async:YES];
    
    [GCDTimer execTask:self selector:@selector(doTask) start:1.0 interval:3.0 repeats:YES async:NO];
}

- (void)doTask
{
    NSLog(@"%s - %@", __func__, [NSThread currentThread]);
}


@end
