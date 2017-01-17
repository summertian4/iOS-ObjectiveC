//
//  SecondViewController.m
//  VCTransitionDemo
//
//  Created by 周凌宇 on 2017/1/16.
//  Copyright © 2017年 微鲸科技. All rights reserved.
//

#import "SecondViewController.h"
#import "TransitionModel.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)backButtonClicked:(UIButton *)sender {
    if (self.model.type == TransitionModelTypePresent) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
    if (self.model.type == TransitionModelTypePush) {
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}

@end
