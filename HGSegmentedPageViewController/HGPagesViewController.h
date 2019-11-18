//
//  HGPagesViewController.h
//  HGSegmentedPageViewController
//
//  Created by Arch on 2019/11/13.
//

#import <UIKit/UIKit.h>
@class HGPopGestureCompatibleCollectionView;

@protocol HGPagesViewControllerDelegate <NSObject>
@optional
- (void)pagesViewControllerWillBeginDragging;
- (void)pagesViewControllerDidEndDragging;
- (void)pagesViewControllerScrollingToTargetPage:(NSInteger)targetPage sourcePage:(NSInteger)sourcePage percent:(CGFloat)percent;
- (void)pagesViewControllerWillTransitionToPage:(NSInteger)page;
- (void)pagesViewControllerDidTransitionToPage:(NSInteger)page;

@end

@interface HGPagesViewController : UIViewController
@property (nonatomic, strong, readonly) HGPopGestureCompatibleCollectionView *collectionView;
@property (nonatomic, copy) NSArray<UIViewController *> *viewControllers;
@property (nonatomic) NSInteger originalPage;
@property (nonatomic) NSInteger selectedPage;
@property (nonatomic, strong, readonly) UIViewController *selectedPageViewController;
@property(nonatomic, weak) id<HGPagesViewControllerDelegate> delegate;

- (void)setSelectedPage:(NSInteger)selectedPage animated:(BOOL)animated;

@end

