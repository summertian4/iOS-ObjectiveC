//
//  main.m
//  EX03
//
//  Created by 周凌宇 on 2017/1/5.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block int val = 0;
        
        void (^blk)(void) = ^{
            printf("in block val = %d\n", val);
            val = 2;
        };
        
        val = 1;
        
        blk();
        
        printf("after block val = %d\n", val);
    }
    return 0;
}
