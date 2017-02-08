//
//  main.m
//  __CFDoExternRefOperation
//
//  Created by 周凌宇 on 2017/1/10.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}

int __CFDoExternRefOperation(uintptr_t op, id obj) {
    CFBasicHashRef table = 取得对象的散列表(obj);
    int count;
    
    switch (op) {
        case OPERATION_retainCount:
        count = CFBasicHashGetCountOfKey(table, obj);
        return count;
        break;
        case OPERATION_retain:
        count = CFBasicHashAddValue(table, obj);
        return obj;
        case OPERATION_release:
        count = CFBasicHashRemoveValue(table, obj);
        return 0 == count;
    }
}
