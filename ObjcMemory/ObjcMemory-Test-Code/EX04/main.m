//
//  main.m
//  EX04
//
//  Created by 周凌宇 on 2017/1/5.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        const char text[] = "hello";
        void (^blk)(void) = ^ {
            printf("%c \n", text[1]);
        };
        
        blk();
        
        
//        const char *text = "hello";
//        void (^blk)(void) = ^ {
//            printf("%c \n", text[1]);
//        };
//        
//        blk();
        
        // Blocks 中，截获自动变量的方法，没有实现对 C 语言数组的截获
    }
    return 0;
}
