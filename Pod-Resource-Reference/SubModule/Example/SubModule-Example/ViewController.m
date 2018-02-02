//
//  ViewController.m
//  SubModule-Example
//
//  Created by 周凌宇 on 2018/2/2.
//  Copyright © 2018年 周凌宇. All rights reserved.
//

#import "ViewController.h"
#import <SubModule/SMViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonClicked:(UIButton *)sender {
    [self presentViewController:[SMViewController new] animated:YES completion:nil];
}

@end
