//
//  main.m
//  EX06
//
//  Created by 周凌宇 on 2017/1/18.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

// block 中不可以改变自动变量的值，
// 可以改变：
//      1. 静态变量
//      2. 静态全局变量
//      3. 全局变量

int global_val = 1;
static int static_global_val = 2;

int main(int argc, const char * argv[]) {
    static int static_val = 3;
    
    void (^blk)(void) = ^ {
        global_val = 1 * 2;
        static_global_val = 2 * 2;
        static_val = 3 * 2;
    }
    
    return 0;
}
