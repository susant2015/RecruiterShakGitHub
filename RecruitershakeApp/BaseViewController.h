//
//  BaseViewController.h
//  RecruitershakeApp
//
//  Created by admin on 01/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
-(id)getSuperviewOfType:(id)superview fromView:(id)myView;
-(void)showAlertWithTitle:(NSString*)strtitle andMessage:(NSString*)strmessage;
@end
