//
//  AddWorkingExprinceViewController.h
//  RecruitershakeApp
//
//  Created by admin on 02/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddWorkingExprinceViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtFieldCompanyName;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldTitle;

@property (weak, nonatomic) IBOutlet UITextField *txtFieldLocation;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldStartDate;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldEndDate;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldDescription;
@property (weak, nonatomic) IBOutlet UIButton *btnAddWorkExprience;
-(void)myAction;

@end
