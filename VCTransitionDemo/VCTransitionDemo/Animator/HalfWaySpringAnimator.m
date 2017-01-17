//
//  HalfWaySpringAnimator.m
//  VCTransitionDemo
//
//  Created by 周凌宇 on 2017/1/16.
//  Copyright © 2017年 微鲸科技. All rights reserved.
//

#import "HalfWaySpringAnimator.h"

@implementation HalfWaySpringAnimator

#pragma mark - UIViewControllerAnimatedTransitioning

// 设置动画的持续时间
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 1;
}

// 执行动画的地方，最核心的方法
// 它提供了转场所需要的重要数据：参与转场的视图控制器和转场过程的状态信息
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIView *containerView = [transitionContext containerView];
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    
//    toView.frame = CGRectMake(fromView.frame.origin.x,
//                              fromView.frame.origin.y + fromView.frame.size.height,
//                              fromView.frame.size.width,
//                              fromView.frame.size.height);
    
    // NOTE: 在有 navigationController 时，转场的 fromView.view 和 fromView 不是一个
    toView.frame = CGRectMake(fromVC.view.frame.origin.x,
                              fromVC.view.frame.origin.y + fromVC.view.frame.size.height,
                              fromVC.view.frame.size.width,
                              fromVC.view.frame.size.height);
    
    // UIModalPresentationCustom 模式转场时 containerView 并不担任 presentingView 的父视图，不需要 [containerView addSubview:toView]
    // 但是在这种情况下 toView 获取也是 nil，所以这句代码不会造成影响，但必须重视这一点
    [containerView addSubview:toView];
    
    NSTimeInterval transitionDuration = [self transitionDuration:transitionContext];
    
    [UIView animateWithDuration:transitionDuration delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
        toView.frame = [transitionContext finalFrameForViewController:toVC];
        
    } completion:^(BOOL finished) {
        BOOL wasCancelled = [transitionContext transitionWasCancelled];
        [transitionContext completeTransition:!wasCancelled];
    }];
}

// 如果实现了，会在转场动画结束后调用，可以执行一些收尾工作
- (void)animationEnded:(BOOL)transitionCompleted {
    NSLog(@"End");
}

@end
