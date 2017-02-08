//
//  main.m
//  EX05
//
//  Created by 周凌宇 on 2017/1/18.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int val = 10;
    const char *fmt = "val = %d\n";
    void (^blk)(void) = ^{printf(fmt, val);};
    
    val = 2;
    fmt = "These values were changed, val = %d\n";
    
    blk();
    
    return 0;
}
