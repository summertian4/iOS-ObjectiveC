//
//  MyObject.m
//  ObjcMemory
//
//  Created by 周凌宇 on 2017/1/19.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject

- (instancetype)init {
    self = [super init];
    _blk = ^{NSLog(@"self = %@", _obj);};
    return self;
}

- (void)dealloc {
    NSLog(@"%@ dealloc", self.class);
}

@end
