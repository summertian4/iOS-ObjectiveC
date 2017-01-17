//
//  FirstViewController+Present.h
//  VCTransitionDemo
//
//  Created by 周凌宇 on 2017/1/19.
//  Copyright © 2017年 微鲸科技. All rights reserved.
//

#import "FirstViewController.h"

@class TransitionModel;
@interface FirstViewController (Present) <UIViewControllerTransitioningDelegate>

- (void)presentSecondVC:(TransitionModel *)model;

@end
