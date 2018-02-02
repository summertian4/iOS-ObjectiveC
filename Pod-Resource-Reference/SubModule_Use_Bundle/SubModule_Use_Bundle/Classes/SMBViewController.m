//
//  SMBViewController.m
//  SubModule_Use_Bundle
//
//  Created by summertian4 on 02/02/2018.
//  Copyright (c) 2018 summertian4. All rights reserved.
//

#import "SMBViewController.h"

@interface SMBViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation SMBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:@"/SubModule_Use_Bundle.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:@"some-image"
                                inBundle:resource_bundle
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
