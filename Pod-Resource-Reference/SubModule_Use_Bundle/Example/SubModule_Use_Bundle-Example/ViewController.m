//
//  ViewController.m
//  SubModule_Use_Bundle-Example
//
//  Created by 周凌宇 on 2018/2/2.
//  Copyright © 2018年 周凌宇. All rights reserved.
//

#import "ViewController.h"
#import <SubModule_Use_Bundle/SMBViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonClicked:(UIButton *)sender {
    [self presentViewController:[SMBViewController new] animated:YES completion:nil];
}

@end
