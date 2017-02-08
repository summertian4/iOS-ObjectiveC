//
//  MyObject.h
//  ObjcMemory
//
//  Created by 周凌宇 on 2017/1/19.
//  Copyright © 2017年 周凌宇. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^blk_t)(void);

@interface MyObject : NSObject

@property (nonatomic, copy) blk_t blk;
@property (nonatomic, strong) NSObject *obj;

@end
