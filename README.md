# HGSegmentedPageViewController

![License MIT](https://img.shields.io/dub/l/vibe-d.svg) 
[![Platform](https://img.shields.io/cocoapods/p/HGSegmentedPageViewController.svg?style=flat)](http://cocoapods.org/pods/HGSegmentedPageViewController)
![Pod version](http://img.shields.io/cocoapods/v/HGSegmentedPageViewController.svg?style=flat)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 9.0+ 
- Objective-C
- Xcode 10+

## Installation

HGSegmentedPageViewController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HGSegmentedPageViewController', '~> 1.2.1'
```

## Blog
[简书](https://www.jianshu.com/u/f245583cc4d8)  

![image](https://github.com/ArchLL/HGSegmentedPageViewController/blob/master/show.gif)  

## Usage
Example: HGSegmentedPageViewController/Example

```Objc

#import "HGSegmentedPageViewController.h"

@interface HGViewController ()
@property (nonatomic, strong) HGSegmentedPageViewController *segmentedPageViewController;

@end

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"分页解决方案";
    
    // 支持请求数据成功后再设置PageViewControllers
    [self addSegmentedPageViewController];
    [self setupPageViewControllers];
}

#pragma mark - Private Methods
- (void)addSegmentedPageViewController {
    [self addChildViewController:self.segmentedPageViewController];
    [self.view addSubview:self.segmentedPageViewController.view];
    [self.segmentedPageViewController didMoveToParentViewController:self];
    [self.segmentedPageViewController.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

/**设置segmentedPageViewController的pageViewControllers和categoryView
* 这里可以对categoryView进行自定义，包括分布方式(左、中、右)、高度、背景颜色、字体颜色、字体大小、下划线高度和颜色等
* 这里用到的pageViewController需要继承自HGPageViewController
*/
- (void)setupPageViewControllers {
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
    _segmentedPageViewController.pageViewControllers = controllers;
    _segmentedPageViewController.categoryView.titles = titles;
    _segmentedPageViewController.categoryView.alignment = HGCategoryViewAlignmentLeft;
    _segmentedPageViewController.categoryView.originalIndex = 0;
    _segmentedPageViewController.categoryView.itemSpacing = 25;
    _segmentedPageViewController.categoryView.backgroundColor = [UIColor whiteColor];
    _segmentedPageViewController.categoryView.topBorder.hidden = YES;
}

#pragma mark Getters
- (HGSegmentedPageViewController *)segmentedPageViewController {
    if (!_segmentedPageViewController) {
        _segmentedPageViewController = [[HGSegmentedPageViewController alloc] init];
    }
    return _segmentedPageViewController;
}
```

## Author

Arch, mint_bin@163.com

## License

HGPersonalCenterExtend is available under the MIT license. See the LICENSE file for more info.


