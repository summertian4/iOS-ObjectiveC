//
//  main.m
//  NSAutoreleasePool
//
//  Created by 周凌宇 on 2017/1/11.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    // 等同于 objc_autoreleasePoolPush
    
    id obj = [[NSObject alloc] init];
    [obj autorelease];
    //  等同于 objc_autorelease(obj)
    
    [NSAutoreleasePool showPools];
    // 查看 NSAutoreleasePool 状况
    
    [pool drain];
    // 等同于 objc_autoreleasePoolPop(pool)
    return 0;
}
