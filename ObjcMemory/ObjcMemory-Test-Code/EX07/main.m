//
//  main.m
//  EX07
//
//  Created by 周凌宇 on 2017/1/18.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    __block int val = 10;
    void (^blk)(void) = ^{val = 1;};
    
    return 0;
}
