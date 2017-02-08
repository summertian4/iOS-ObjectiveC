//
//  main.m
//  block_retain_cycle
//
//  Created by 周凌宇 on 2017/1/19.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObject.h"

int main(int argc, const char * argv[]) {
    id myobj = [[MyObject alloc] init];
    NSLog(@"%@", myobj);
    return 0;
}
