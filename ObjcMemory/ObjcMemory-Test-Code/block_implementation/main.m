//
//  main.m
//  block_implementation
//
//  Created by 周凌宇 on 2017/1/17.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    void (^blk)(void) = ^{NSLog(@"Block");};
    blk();
    return 0;
}
