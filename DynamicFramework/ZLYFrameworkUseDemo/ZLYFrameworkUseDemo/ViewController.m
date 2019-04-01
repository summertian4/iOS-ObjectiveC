//
//  ViewController.m
//  ZLYFrameworkUseDemo
//
//  Created by 周凌宇 on 2019/4/1.
//  Copyright © 2019年 周凌宇. All rights reserved.
//

#import "ViewController.h"
#import <ZLYTestFramework/ZLYBird.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ZLYBird *bird = [ZLYBird new];
    bird.name = @"world";
    [bird singing];
}


@end
