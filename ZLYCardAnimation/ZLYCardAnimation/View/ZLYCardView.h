//
//  ZLYCardView.h
//  CardAnimation
//
//  Created by 周凌宇 on 16/8/9.
//  Copyright © 2016年 周凌宇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZLYCardView : UIView

-(void)translateWithSize:(CGSize)size center:(CGPoint)center completion:(void (^)(POPAnimation *anim, BOOL finished))completion;
-(void)translateWithCenterLocation:(CGPoint)point completion:(void (^)(POPAnimation *anim, BOOL finished))completion;

@end
