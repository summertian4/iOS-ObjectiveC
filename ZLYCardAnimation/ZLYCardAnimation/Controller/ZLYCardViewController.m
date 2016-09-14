//
//  ZLYCardViewController.m
//  CardAnimation
//
//  Created by 周凌宇 on 16/8/9.
//  Copyright © 2016年 周凌宇. All rights reserved.
//

#import "ZLYCardViewController.h"
#import "ZLYCardView.h"

#define CardOffset 20
#define CardSize 300
#define PagingLimitWidth 80

@interface ZLYCardViewController ()
@property (nonatomic, strong) NSMutableArray *cards;
@property (nonatomic, assign) CGPoint startLocation;

@property (nonatomic, strong) UIPanGestureRecognizer *pan;
@end

@implementation ZLYCardViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
    [self addGesture];
}

#pragma mark - Private

- (void)initView {
    self.view.backgroundColor = [UIColor whiteColor];
    
    for (int i = 0; i < 3; i++) {
        ZLYCardView * card = [[ZLYCardView alloc] init];
        [self.view addSubview:card];
        [self.cards addObject:card];
        card.frame = CGRectMake(0, 0, CardSize, CardSize);
    }
    [self resetCardsFrameWithAnimation];
}

- (void)topCardDismiss:(ZLYCardView *)topCard {
    // 禁用手势
    self.pan.enabled = NO;
    [UIView animateWithDuration:0.3 animations:^{
        if (topCard.center.x > topCard.superview.center.x) {
            topCard.mj_x = CGRectGetMaxX(topCard.superview.frame);
        } else {
            topCard.mj_x = topCard.superview.mj_x - topCard.mj_w;
        }
    } completion:^(BOOL finished) {
        [topCard removeFromSuperview];
        // 解开手势
        self.pan.enabled = YES;
    }];
    
    [self.cards removeObject:topCard];
    [self resetCardsFrameWithAnimation];
}

-(void)topCardReCenter:(ZLYCardView *)topCard{
    self.pan.enabled = NO;
    [topCard translateWithCenterLocation:self.view.center completion:^(POPAnimation *anim, BOOL finished) {
        [self.cards.firstObject removeFromSuperview];
        [self.cards removeObject:self.cards.firstObject];
        self.pan.enabled = YES;
    }];
}

- (void)resetCardsFrameWithAnimation {
    for (int i = 0; i < self.cards.count; i++) {
        ZLYCardView * card = self.cards[i];
        card.hidden = NO;
        [card translateWithSize:CGSizeMake(CardSize - CardOffset * (2 - i), CardSize - CardOffset * (2 - i)) center:CGPointMake(self.view.center.x, self.view.center.y + CardOffset * (2 - i)) completion:nil];
    }
}

#pragma mark - Gesture

- (void)addGesture {
    self.pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panHandle:)];
    [self.view addGestureRecognizer:self.pan];
}

-(void)panHandle:(UIPanGestureRecognizer *)pan{
    CGPoint location = [pan locationInView:self.view];
    if (pan.state == UIGestureRecognizerStateBegan) {
        self.startLocation = location;
        ZLYCardView * card = [[ZLYCardView alloc] init];
        card.frame = [[self.cards firstObject] frame];
        card.hidden = NO;
        [self.view insertSubview:card belowSubview:[self.cards firstObject]];
        [self.cards insertObject:card atIndex:0];
        return;
    }
    
    if (pan.state == UIGestureRecognizerStateChanged) {
        ZLYCardView * topCard = self.cards.lastObject;
        CGPoint offset = CGPointMake(location.x - self.startLocation.x, location.y - self.startLocation.y);
        topCard.center = CGPointMake(topCard.center.x + offset.x, topCard.center.y + offset.y);
        self.startLocation = location;
    }
    
    if (pan.state == UIGestureRecognizerStateEnded) {
        ZLYCardView * topCard = self.cards.lastObject;
        CGFloat length;
        CGFloat distanceX = topCard.center.x - topCard.superview.center.x;
        CGFloat distanceY = topCard.center.y - topCard.superview.center.y;
        length = sqrt(distanceX * distanceX + distanceY * distanceY);
        
        if (length > 100) {
            [self topCardDismiss:topCard];
        } else {
            [self topCardReCenter:topCard];
        }
    }
}

#pragma mark - Getter Setter 

- (NSMutableArray *)cards {
    if (_cards == nil) {
        _cards = [NSMutableArray array];
    }
    return _cards;
}

@end
