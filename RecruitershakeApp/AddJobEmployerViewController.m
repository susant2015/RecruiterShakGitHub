//
//  AddJobViewController.m
//  RecruitershakeApp
//
//  Created by admin on 02/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import "AddJobEmployerViewController.h"
#import "AddJobEmployerService.h"
#import "Constants.h"
#import "ModelLogInEmployer.h"
#import "ModelAddJobEmployer.h"
@interface AddJobEmployerViewController ()<UITextFieldDelegate>
-(void)txtFieldSchool;
-(void)txtFieldPostion;
-(void)txtFieldEducation;
-(void)txtFieldLocations;
-(void)txtFieldSkill;
-(void)txtFieldJobDesc;
@end

@implementation AddJobEmployerViewController{
    
    UITableView *tableView;
}

@synthesize txtFieldSchoolName=_txtFieldSchoolName;
@synthesize txtFieldPositionOffred=_txtFieldPositionOffred;
@synthesize txtFieldEducationalQualification=_txtFieldEducationalQualification;
@synthesize txtFieldLocation=_txtFieldLocation;
@synthesize txtFieldSkillRequired=_txtFieldSkillRequired;
@synthesize txtFieldJobDescription=_txtFieldJobDescription;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self txtFieldSchool];
    [self txtFieldPostion];
    [self txtFieldEducation];
    [self txtFieldLocations];
    [self txtFieldSkill];
    [self txtFieldJobDesc];
    
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(void)txtFieldSchool{
  //self.txtFieldSchoolName.placeholder=@" *School";
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldSchoolName setDelegate:self];
              self.txtFieldSchoolName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *JOB TITLE" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    
}
-(void)txtFieldPostion{
   // UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldPositionOffred setDelegate:self];
   // self.txtFieldPositionOffred.placeholder=@" *POSITION OFFRED";
    self.txtFieldPositionOffred.keyboardType=UIKeyboardTypeDefault;
    
    UIColor *color = [UIColor whiteColor];
    self.txtFieldPositionOffred.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *POSITION OFFRED" attributes:@{NSForegroundColorAttributeName: color}];
  
}
-(void)txtFieldEducation{
    
    [self.txtFieldEducationalQualification setDelegate:self];
    self.txtFieldEducationalQualification.keyboardType=UIKeyboardTypeDefault;
    UIColor *color=[UIColor whiteColor];
    self.txtFieldEducationalQualification.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *EDUCATIONAL QUALIFICATION" attributes:@{NSForegroundColorAttributeName: color}];
}
-(void)txtFieldLocations{
    
    
    [self.txtFieldLocation setDelegate:self];
    self.txtFieldLocation.keyboardType=UIKeyboardTypeDefault;
    UIColor *color=[UIColor whiteColor];
    self.txtFieldLocation.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *LOCATION" attributes:@{NSForegroundColorAttributeName: color}];
}
-(void)txtFieldSkill{
    
    [self.txtFieldSkillRequired setDelegate:self];
    self.txtFieldSkillRequired.keyboardType=UIKeyboardTypeDefault;
    UIColor *color=[UIColor whiteColor];
    self.txtFieldSkillRequired.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *SKILL REQUIRED" attributes:@{NSForegroundColorAttributeName: color}];
}
-(void)txtFieldJobDesc{
    
    [self.txtFieldJobDescription setDelegate:self];
    self.txtFieldJobDescription.keyboardType=UIKeyboardTypeDefault;
    UIColor *color=[UIColor whiteColor];
    self.txtFieldJobDescription.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *JOB DESCRIPTION" attributes:@{NSForegroundColorAttributeName: color}];
    self.txtFieldJobDescription.textAlignment=NSTextAlignmentJustified;
}
- (IBAction)add {
    
     [self alertCheck];
    [[AddJobEmployerService sharedInstance] addEmployerJobUserId:modelLogInEmployer.strId jobTitle :self.txtFieldSchoolName.text designation:self.txtFieldPositionOffred.text eduQualification:self.txtFieldEducationalQualification.text skillRequired:self.txtFieldSkillRequired.text jobDescription:self.txtFieldJobDescription.text location:self.txtFieldLocation.text withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        
        
        if(isError){
           [[[UIAlertView alloc] initWithTitle:nil message:@"Not Inserted Successfully." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                //[self alertStatus:SomethingWrong :nil];
                
            }
            
        }
        else{
             modelAddJobEmployer=[[ModelAddJobEmployer alloc]initWithDictionary:result];
             NSLog(@"The created is:%@",modelAddJobEmployer.strJobTitle);
           
            [[[UIAlertView alloc] initWithTitle:nil message:@"inserted your job Succesfully" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
        }
    }];
}


-(BOOL)alertCheck{
    
    if (self.txtFieldSchoolName.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your JobTitle." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    else if (self.txtFieldPositionOffred.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your JobPositioned." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
   else if (self.txtFieldEducationalQualification.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your Qualification." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
   else if (self.txtFieldSkillRequired.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your SkillRequired." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
   else if (self.txtFieldJobDescription.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your Job Description." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    else if(self.txtFieldLocation.text.length==0) {
        
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your Job Location." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    return YES;
}
@end
