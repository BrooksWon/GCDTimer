//
//  GCDTimer.h
//  GCDTimer
//
//  Created by Brooks on 2019/11/20.
//  Copyright © 2019 Brooks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCDTimer : NSObject

+ (NSString *)execTask:(void(^)(void))task
           start:(NSTimeInterval)start
        interval:(NSTimeInterval)interval
         repeats:(BOOL)repeats
           async:(BOOL)async;

+ (NSString *)execTask:(id)target
              selector:(SEL)selector
                 start:(NSTimeInterval)start
              interval:(NSTimeInterval)interval
               repeats:(BOOL)repeats
                 async:(BOOL)async;

+ (void)cancelTask:(NSString *)name;

@end
