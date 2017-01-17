//
//  FirstViewController.m
//  VCTransitionDemo
//
//  Created by 周凌宇 on 2017/1/16.
//  Copyright © 2017年 微鲸科技. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstViewController+Push.h"
#import "FirstViewController+Present.h"
#import "TransitionModel.h"

@interface FirstViewController ()
<UITableViewDelegate,
UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray<TransitionModel *> *models;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.models.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    TransitionModel *model = self.models[indexPath.row];
    cell.textLabel.text = model.content;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TransitionModel *model = self.models[indexPath.row];
    if (model.type == TransitionModelTypePresent) {
        [self presentSecondVC:model];
    }
    if (model.type == TransitionModelTypePush) {
        [self pushSecondVC:model];
    }
}

#pragma mark - Getter Setter

- (NSMutableArray<TransitionModel *> *)models {
    if (_models == nil) {
        _models = [NSMutableArray array];
        TransitionModel *model0 = [TransitionModel new];
        model0.type = TransitionModelTypePresent;
        model0.content = @"Present";
        [_models addObject:model0];
        TransitionModel *model1 = [TransitionModel new];
        model1.type = TransitionModelTypePush;
        model1.content = @"Push";
        [_models addObject:model1];
    }
    return _models;
}

- (void)dealloc {
    NSLog(@"%@ delloc", self.class);
}

@end
