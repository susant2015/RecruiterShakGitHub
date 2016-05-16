//
//  RegisterSliderViewController.m
//  RecruitershakeApp
//
//  Created by admin on 16/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "RegisterSliderViewController.h"
#import "RegisterViewController.h"
#import "SliderContainerViewController.h"

@interface RegisterSliderViewController () <YSLContainerViewControllerDelegate>

@end

@implementation RegisterSliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RegisterSliderViewController *playListVC = [[RegisterSliderViewController alloc]initWithNibName:@"RegisterSliderViewController" bundle:nil];
    playListVC.title = @"PlayList";
    
   
    
    // ContainerView
    float statusHeight = [[UIApplication sharedApplication] statusBarFrame].size.height;
    float navigationHeight = self.navigationController.navigationBar.frame.size.height;
    
    SliderContainerViewController *containerVC = [[SliderContainerViewController alloc]initWithControllers:@[playListVC]
                                                                                        topBarHeight:statusHeight + navigationHeight
                                                                                parentViewController:self];
    containerVC.delegate = self;
    containerVC.menuItemFont = [UIFont fontWithName:@"Futura-Medium" size:16];
    
    [self.view addSubview:containerVC.view];
   

}
#pragma mark -- YSLContainerViewControllerDelegate
- (void)containerViewItemIndex:(NSInteger)index currentController:(UIViewController *)controller
{
    //    NSLog(@"current Index : %ld",(long)index);
    //    NSLog(@"current controller : %@",controller);
    [controller viewWillAppear:YES];
}





@end
