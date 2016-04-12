//
//  BaseViewController.m
//  RecruitershakeApp
//
//  Created by admin on 01/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(id)getSuperviewOfType:(id)superview fromView:(id)myView{
    
    if ([myView isKindOfClass:[superview class]]) {
        return myView;
    }else{
        id temp=[myView superview];
    
    while (1) {
if ([temp isKindOfClass:[superview class]]) {
    return temp;
            }
        temp=[temp superview];
        }
    }
    return nil;
}
@end
