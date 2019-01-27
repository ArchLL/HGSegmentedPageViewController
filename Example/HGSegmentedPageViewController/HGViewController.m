//
//  HGViewController.m
//  HGSegmentedPageViewController
//
//  Created by mint_bin@163.com on 01/27/2019.
//  Copyright (c) 2019 mint_bin@163.com. All rights reserved.
//

#import "HGViewController.h"
#import "HGSegmentedPageViewController.h"
#import "HGFirstViewController.h"
#import "HGSecondViewController.h"
#import "HGThirdViewController.h"

@interface HGViewController ()
@property (nonatomic, strong) HGSegmentedPageViewController *segmentedPageViewController;
@end

@implementation HGViewController

#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"分页解决方案";
    
    [self addChildViewController:self.segmentedPageViewController];
    [self.view addSubview:self.segmentedPageViewController.view];
    [self.segmentedPageViewController didMoveToParentViewController:self];
    [self.segmentedPageViewController.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark Getters
- (HGSegmentedPageViewController *)segmentedPageViewController {
    if (!_segmentedPageViewController) {
        NSMutableArray *controllers = [NSMutableArray array];
        NSArray *titles = @[@"华盛顿", @"夏威夷", @"拉斯维加斯", @"纽约", @"西雅图", @"底特律", @"费城", @"旧金山", @"芝加哥"];
        for (int i = 0; i < titles.count; i++) {
            UIViewController *controller;
            if (i % 3 == 0) {
                controller = [[HGThirdViewController alloc] init];
            } else if (i % 2 == 0) {
                controller = [[HGSecondViewController alloc] init];
            } else {
                controller = [[HGFirstViewController alloc] init];
            }
            [controllers addObject:controller];
        }
        _segmentedPageViewController = [[HGSegmentedPageViewController alloc] init];
        _segmentedPageViewController.pageViewControllers = controllers.copy;
        _segmentedPageViewController.categoryView.titles = titles;
        _segmentedPageViewController.categoryView.originalIndex = 0;
    }
    return _segmentedPageViewController;
}

@end
