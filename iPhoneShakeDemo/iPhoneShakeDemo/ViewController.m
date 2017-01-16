//
//  ViewController.m
//  iPhoneShakeDemo
//
//  Created by 周凌宇 on 2017/1/13.
//  Copyright © 2017年 微鲸科技. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioServices.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - AudioServicesPlaySystemSound

- (IBAction)shake0:(UIButton *)sender {
    // `Peek` 震动反馈 (weak boom)
    AudioServicesPlaySystemSound(1519);
}

- (IBAction)shake1:(UIButton *)sender {
    // `Pop` 震动反馈 (strong boom)
    AudioServicesPlaySystemSound(1520);
}

- (IBAction)shake2:(UIButton *)sender {
    AudioServicesPlaySystemSound(1521);
}

#pragma mark - _tapticEngine

- (IBAction)shake3:(UIButton *)sender {
    id tapticEngine = [[UIDevice currentDevice] performSelector: NSSelectorFromString(@"_tapticEngine")
                                                     withObject:nil];
    [tapticEngine performSelector: NSSelectorFromString(@"actuateFeedback:")
                       withObject:@(0)];
    
//    SEL selector = NSSelectorFromString(@"actuateFeedback:");
//    int32_t arg = 1001;
//    
//    NSInvocation *inv = [NSInvocation invocationWithMethodSignature:[tapticEngine methodSignatureForSelector:selector]];
//    [inv setTarget:tapticEngine];
//    [inv setSelector:selector];
//    [inv setArgument:&arg atIndex:2];
//    [inv invoke];
}

#pragma mark - UIImpactFeedbackGenerator

- (IBAction)shake4:(UIButton *)sender {
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleLight];
    [generator prepare];
    [generator impactOccurred];
}

- (IBAction)shake5:(UIButton *)sender {
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleMedium];
    [generator prepare];
    [generator impactOccurred];
}

- (IBAction)shake6:(UIButton *)sender {
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleHeavy];
    [generator prepare];
    [generator impactOccurred];
}

@end
