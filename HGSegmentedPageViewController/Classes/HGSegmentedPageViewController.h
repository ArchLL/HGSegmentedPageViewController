//
//  HGSegmentedPageViewController.h
//  HGPersonalCenterExtend
//
//  Created by Arch on 2019/1/3.
//  Copyright © 2019 mint_bin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HGCategoryView.h"

@protocol HGSegmentedPageViewControllerDelegate <NSObject>
@optional
- (void)segmentedPageViewControllerWillBeginDragging;
- (void)segmentedPageViewControllerDidEndDragging;
- (void)segmentedPageViewControllerDidEndDeceleratingWithPageIndex:(NSInteger)index;
@end

@interface HGSegmentedPageViewController : UIViewController
@property (nonatomic, strong, readonly) HGCategoryView *categoryView;
@property (nonatomic, copy) NSArray<UIViewController *> *pageViewControllers;
@property (nonatomic, strong, readonly) UIViewController *currentPageViewController;
@property (nonatomic, readonly) NSInteger selectedIndex;
@property (nonatomic, weak) id<HGSegmentedPageViewControllerDelegate> delegate;
@end

