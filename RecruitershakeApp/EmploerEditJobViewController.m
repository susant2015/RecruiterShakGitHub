//
//  EmploerEditJobViewController.m
//  RecruitershakeApp
//
//  Created by admin on 06/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EmploerEditJobViewController.h"
#import "EmployerEditService.h"
#import "Constants.h"
#import "ModelEmploerEdit.h"

@interface EmploerEditJobViewController ()<UITextFieldDelegate>

-(void)txtFieldSchool;
-(void)txtFieldPostion;
-(void)txtFieldEducation;
-(void)txtFieldLocations;
-(void)txtFieldSkill;
-(void)txtFieldJobDesc;

@end

@implementation EmploerEditJobViewController{
    
    NSString *strTitleEmpJob;
}

@synthesize txtJobTitle;
@synthesize txtQualification;
@synthesize txtLocation;
@synthesize txtPosition;
@synthesize txtDescription;
@synthesize txtSkillRequired;

@synthesize strUrlKey;
@synthesize strEmpId;
@synthesize strEmpTitle;
@synthesize strEmpSkillRequired;
@synthesize strEmpPosition;
@synthesize strEmpLocation;
@synthesize strEmpDesc;
@synthesize strEmpEduQual;

@synthesize dicEmpData;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"The dic data is:%@",dicEmpData);
    modelEmploerEdit=[[ModelEmploerEdit alloc]initWithDictionary:dicEmpData];
    
    NSLog(@"THe model dict is: %@",modelEmploerEdit.strEmpId);
    
    [self txtFieldSchool];
    [self txtFieldPostion];
    [self txtFieldEducation];
    [self txtFieldLocations];
    [self txtFieldSkill];
    [self txtFieldJobDesc];
   
   
  /* strTitleEmpJob =[dicEmpData objectForKey:@"title"];
    self.strEmpEduQual=[dicEmpData objectForKey:@"educational_qualifiaction"];
    self.strEmpLocation=[dicEmpData objectForKey:@"location"];
    self.strEmpPosition=[dicEmpData objectForKey:@"designation"];
    self.strEmpDesc=[dicEmpData objectForKey:@"description"];
    self.strEmpSkillRequired=[dicEmpData objectForKey:@"skill_required"];
    self.strUrlKey=[dicEmpData objectForKey:@"url_key"];
    self.strEmpId=[dicEmpData objectForKey:@"u_id"];  */
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(void)txtFieldSchool{
        UIColor *colorWhite=[UIColor whiteColor];
    [self.txtJobTitle setDelegate:self];
    self.txtJobTitle.attributedPlaceholder =[[NSAttributedString alloc] initWithString:modelEmploerEdit.strTitleEmpJob attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtJobTitle.text=modelEmploerEdit.strTitleEmpJob;

    
}
-(void)txtFieldPostion{
    
    [self.txtPosition setDelegate:self];
   
    self.txtPosition.keyboardType=UIKeyboardTypeDefault;
    
    UIColor *color = [UIColor whiteColor];
    self.txtPosition.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelEmploerEdit.strEmpPosition attributes:@{NSForegroundColorAttributeName: color}];
    self.txtPosition.text=modelEmploerEdit.strEmpPosition;
    
}
-(void)txtFieldEducation{
    
    [self.txtQualification setDelegate:self];
    self.txtQualification.keyboardType=UIKeyboardTypeDefault;
    UIColor *color=[UIColor whiteColor];
    self.txtQualification.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelEmploerEdit.strEmpEduQual attributes:@{NSForegroundColorAttributeName: color}];
    self.txtQualification.text=modelEmploerEdit.strEmpEduQual;
}
-(void)txtFieldLocations{
    
    
    [self.txtLocation setDelegate:self];
    self.txtLocation.keyboardType=UIKeyboardTypeDefault;
    UIColor *color=[UIColor whiteColor];
    self.txtLocation.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelEmploerEdit.strEmpLocation attributes:@{NSForegroundColorAttributeName: color}];
    self.txtLocation.text=modelEmploerEdit.strEmpLocation;
}
-(void)txtFieldSkill{
    
    [self.txtSkillRequired setDelegate:self];
    self.txtSkillRequired.keyboardType=UIKeyboardTypeDefault;
    UIColor *color=[UIColor whiteColor];
    self.txtSkillRequired.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelEmploerEdit.strEmpSkillRequired attributes:@{NSForegroundColorAttributeName: color}];
    self.txtSkillRequired.text=modelEmploerEdit.strEmpSkillRequired;
}
-(void)txtFieldJobDesc{
    
    [self.txtDescription setDelegate:self];
    self.txtDescription.keyboardType=UIKeyboardTypeDefault;
    UIColor *color=[UIColor whiteColor];
    self.txtDescription.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelEmploerEdit.strEmpDesc attributes:@{NSForegroundColorAttributeName: color}];
    self.txtDescription.text=modelEmploerEdit.strEmpDesc;
    self.txtDescription.textAlignment=NSTextAlignmentJustified;
}

-(BOOL)alertCheck{
    
    if (self.txtJobTitle.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your JobTitle." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    else if (self.txtPosition.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your JobPositioned." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    else if (self.txtQualification.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your Qualification." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    else if (self.txtSkillRequired.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your SkillRequired." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    else if (self.txtDescription.text.length==0) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your Job Description." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    else if(self.txtLocation.text.length==0) {
        
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter your Job Location." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return NO;
    }
    return YES;
}


- (IBAction)btnEditSave {
    
    [self alertCheck];
    [[EmployerEditService sharedInstance] employerUrlKey:modelEmploerEdit.strUrlKey empId:modelEmploerEdit.strEmpId jobTitle:self.txtJobTitle.text desgnation:self.txtPosition.text eduQualification:self.txtQualification.text skillRequired:self.txtSkillRequired.text jobDesc:self.txtDescription.text location:self.txtLocation.text withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        
        
        if(isError){
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                //[self alertStatus:SomethingWrong :nil];
                
            }
            
        }
        else{
            
            
            [[[UIAlertView alloc] initWithTitle:nil message:@"inserted your job Succesfully" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
        }
    }];
}
@end
