//
//  main.m
//  EX08
//
//  Created by 周凌宇 on 2017/1/18.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tool.h"

int main(int argc, const char * argv[]) {
    
    id arr = [[[Tool alloc] init] getBlockArray];
    
    typedef void (^blk_t)(void);
    
    blk_t blk = [arr objectAtIndex:0];
    
    blk();
    
    return 0;
}
