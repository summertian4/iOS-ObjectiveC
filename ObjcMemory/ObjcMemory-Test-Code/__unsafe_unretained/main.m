//
//  main.m
//  __unsafe_unretained
//
//  Created by 周凌宇 on 2017/1/12.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id __unsafe_unretained obj1 = nil;
        {
            // 自己生成并持有对象
            id __strong obj0 = [[NSObject alloc] init];
            
            // 因为 obj0 变量为强引用，
            // 所以自己持有对象
            obj1 = obj0;
            
            // 虽然 obj0 变量赋值给 obj1
            // 但是 obj1 变量既不持有对象的强引用，也不持有对象的弱引用
            NSLog(@"A: %@", obj1);
            // 输出 obj1 变量所表示的对象
        }
        
        NSLog(@"B: %@", obj1);
        // 输出 obj1 变量所表示的对象
        // obj1 变量表示的对象已经被废弃
        // 所以此时获得的是悬垂指针
        // 错误访问
    }
    return 0;
}
