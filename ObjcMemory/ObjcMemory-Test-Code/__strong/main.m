//
//  main.m
//  __strong
//
//  Created by 周凌宇 on 2017/1/15.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id __strong obj = [[NSObject alloc] init];
        id __weak obj1 = obj;
        NSArray *arr = [NSArray array];
    }
    return 0;
}
