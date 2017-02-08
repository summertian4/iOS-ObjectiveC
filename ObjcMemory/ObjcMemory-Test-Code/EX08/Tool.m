//
//  Tool.m
//  ObjcMemory
//
//  Created by 周凌宇 on 2017/1/18.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import "Tool.h"

@implementation Tool

- (id)getBlockArray {
    int val = 10;
    return [[NSArray alloc] initWithObjects:^{NSLog(@"block0: %d", val);}, ^{NSLog(@"block1: %d", val);}, nil];
}

@end
