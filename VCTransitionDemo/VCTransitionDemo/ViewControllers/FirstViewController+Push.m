//
//  FirstViewController+Push.m
//  VCTransitionDemo
//
//  Created by 周凌宇 on 2017/1/19.
//  Copyright © 2017年 微鲸科技. All rights reserved.
//

#import "FirstViewController+Push.h"
#import "HalfWaySpringAnimator.h"
#import "SecondViewController.h"

@implementation FirstViewController (Push)

- (void)pushSecondVC:(TransitionModel *)model {
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.model = model;
    self.navigationController.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UINavigationControllerDelegate

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    if (operation == UINavigationControllerOperationPush) {
        return [[HalfWaySpringAnimator alloc] init];
    }
    
    if (operation == UINavigationControllerOperationPop) {
        return [[HalfWaySpringAnimator alloc] init];
    }
    
    return [[HalfWaySpringAnimator alloc] init];
}

@end
