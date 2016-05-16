//
//  SliderContainerViewController.h
//  RecruitershakeApp
//
//  Created by admin on 16/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "BaseViewController.h"
@protocol YSLContainerViewControllerDelegate <NSObject>

- (void)containerViewItemIndex:(NSInteger)index currentController:(UIViewController *)controller;

@end
@interface SliderContainerViewController : BaseViewController
@property (nonatomic, weak) id <YSLContainerViewControllerDelegate> delegate;

@property (nonatomic, strong) UIScrollView *contentScrollView;
@property (nonatomic, strong, readonly) NSMutableArray *titles;
@property (nonatomic, strong, readonly) NSMutableArray *childControllers;

@property (nonatomic, strong) UIFont  *menuItemFont;
@property (nonatomic, strong) UIColor *menuItemTitleColor;
@property (nonatomic, strong) UIColor *menuItemSelectedTitleColor;
@property (nonatomic, strong) UIColor *menuBackGroudColor;
@property (nonatomic, strong) UIColor *menuIndicatorColor;

- (id)initWithControllers:(NSArray *)controllers
             topBarHeight:(CGFloat)topBarHeight
     parentViewController:(UIViewController *)parentViewController;
@end
