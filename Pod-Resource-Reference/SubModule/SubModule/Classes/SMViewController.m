//
//  SMViewController.m
//  SubModule
//
//  Created by summertian4 on 02/02/2018.
//  Copyright (c) 2018 summertian4. All rights reserved.
//

#import "SMViewController.h"

@interface SMViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSLog(@"%@", bundle);
    UIImage *image = [UIImage imageNamed:@"some-image"
                                inBundle:bundle
           compatibleWithTraitCollection:nil];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    self.imageView.contentMode = UIViewContentModeCenter;
    [self.view addSubview:self.imageView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.imageView.frame = self.view.frame;
}

@end
