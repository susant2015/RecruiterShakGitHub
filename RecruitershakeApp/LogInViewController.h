//
//  LogInViewController.h
//  RecruitershakeApp
//
//  Created by admin on 26/02/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogInViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtUserName;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;

@property (weak, nonatomic) IBOutlet UILabel *lblDynamicallyChange;


- (IBAction)btnEmployerImgChange;

- (IBAction)btnRecruiterImgChange;

- (IBAction)btnApplicantImgChange;

@property (weak, nonatomic) IBOutlet UIButton *btnRecruiter;
@property (weak, nonatomic) IBOutlet UIButton *btnApplicant;
@property (weak, nonatomic) IBOutlet UIButton *btnEmployer;
@property(strong,nonatomic) NSString *group;

@end
