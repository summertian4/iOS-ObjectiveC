//
//  FirstViewController+Present.m
//  VCTransitionDemo
//
//  Created by 周凌宇 on 2017/1/19.
//  Copyright © 2017年 微鲸科技. All rights reserved.
//

#import "FirstViewController+Present.h"
#import "HalfWaySpringAnimator.h"
#import "SecondViewController.h"

@implementation FirstViewController (Present)

- (void)presentSecondVC:(TransitionModel *)model {
    SecondViewController *vc = [[SecondViewController alloc] init];
//    vc.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    vc.modalPresentationStyle = UIModalPresentationCustom;
    vc.model = model;
    vc.transitioningDelegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitioningDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [[HalfWaySpringAnimator alloc] init];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [[HalfWaySpringAnimator alloc] init];
}

@end
