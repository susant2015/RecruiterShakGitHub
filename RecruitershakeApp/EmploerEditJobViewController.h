//
//  EmploerEditJobViewController.h
//  RecruitershakeApp
//
//  Created by admin on 06/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmploerEditJobViewController : UIViewController

@property (strong, nonatomic) NSDictionary *dicEmpData;
@property (weak, nonatomic) IBOutlet UITextField *txtLocation;
@property (weak, nonatomic) IBOutlet UITextField *txtQualification;
@property (weak, nonatomic) IBOutlet UITextField *txtPosition;
@property (weak, nonatomic) IBOutlet UITextField *txtJobTitle;
@property (weak, nonatomic) IBOutlet UITextField *txtDescription;
@property (weak, nonatomic) IBOutlet UITextField *txtSkillRequired;
@property(weak,nonatomic) NSString *strUrlKey;
@property(weak,nonatomic) NSString *strEmpId;
@property(weak,nonatomic) NSString *strEmpTitle;
@property(weak,nonatomic) NSString *strEmpEduQual;
@property(weak,nonatomic) NSString *strEmpLocation;
@property(weak,nonatomic) NSString *strEmpPosition;
@property(weak,nonatomic) NSString *strEmpDesc;
@property(weak,nonatomic) NSString *strEmpSkillRequired;


- (IBAction)btnEditSave;
-(BOOL)alertCheck;
@end
