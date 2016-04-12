//
//  AddJobViewController.h
//  RecruitershakeApp
//
//  Created by admin on 02/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddJobEmployerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtFieldSchoolName;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldPositionOffred;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldEducationalQualification;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldLocation;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldSkillRequired;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldJobDescription;
- (void)btnAddJobSave;
- (IBAction)add;
-(BOOL)alertCheck;
@end
