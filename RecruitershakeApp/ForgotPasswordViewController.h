//
//  ForgotPasswordViewController.h
//  RecruitershakeApp
//
//  Created by admin on 29/02/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForgotPasswordViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtFieldForgotPassword;
- (IBAction)btnForgotSubmit;
- (IBAction)btnGotoSignInPage:(id)sender;

@end
