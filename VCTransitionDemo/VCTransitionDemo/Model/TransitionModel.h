//
//  TransitionModel.h
//  VCTransitionDemo
//
//  Created by 周凌宇 on 2017/1/19.
//  Copyright © 2017年 微鲸科技. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    TransitionModelTypePresent,
    TransitionModelTypePush,
} TransitionModelType;

@interface TransitionModel : NSObject

@property (nonatomic, assign) TransitionModelType type;
@property (nonatomic, copy) NSString *content;

@end
