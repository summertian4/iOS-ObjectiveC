//
//  CardView.m
//  CardAnimation
//
//  Created by 周凌宇 on 16/8/9.
//  Copyright © 2016年 周凌宇. All rights reserved.
//

#import "ZLYCardView.h"
#define ZLYCardCornerRadius 10

@interface ZLYCardView ()

@end

@implementation ZLYCardView

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = kRandomColor;
        self.layer.cornerRadius = ZLYCardCornerRadius;
        self.layer.masksToBounds = YES;
    }
    return self;
}

-(void)translateWithSize:(CGSize)size center:(CGPoint)center completion:(void (^)(POPAnimation *anim, BOOL finished))completion {
    POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerSize];
    anim.toValue = [NSValue valueWithCGSize:size];
    anim.springBounciness = 20;
    anim.springSpeed = 10;
    [self.layer pop_addAnimation:anim forKey:kPOPLayerSize];
    [self translateWithCenterLocation:center completion:completion];
}

-(void)translateWithCenterLocation:(CGPoint)point completion:(void (^)(POPAnimation *anim, BOOL finished))completion {
    POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPViewCenter];
    anim.toValue = [NSValue valueWithCGPoint:point];
    anim.springBounciness = 10;
    anim.springSpeed = 10;
    anim.completionBlock = completion;
    [self pop_addAnimation:anim forKey:kPOPViewCenter];
}

@end
