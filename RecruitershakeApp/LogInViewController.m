//
//  LogInViewController.m
//  RecruitershakeApp
//
//  Created by admin on 26/02/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import "LogInViewController.h"
#import "SigninService.h"
#import "DashBoardEmployerViewController.h"
#import "DashBoardRecruiterViewController.h"
#import "DashBoardApplicantProfileViewController.h"
#import "ModelLogInEmployer.h"
#import "ModelLogInRecruiter.h"
#import "ModelLogInApplicant.h"
#import "Constants.h"
#import "CustomSectionViewController.h"
@interface LogInViewController ()<UITextFieldDelegate>

-(void)txtUserNameField;
-(void)txtPasswordField;

@end

@implementation LogInViewController
{
    NSString *emp;
  //  NSString *responseActCode;
    
}
@synthesize txtUserName=_txtUserName;
@synthesize txtPassword=_txtPassword;

@synthesize lblDynamicallyChange=_lblDynamicallyChange;
@synthesize btnRecruiter=_btnRecruiter;
@synthesize btnApplicant=_btnApplicant;
@synthesize group=_group;
//@synthesize responseActCode;

- (void)viewDidLoad {
    [super viewDidLoad];
    _txtUserName.returnKeyType = UIReturnKeyNext;
    _txtPassword.returnKeyType=UIReturnKeyNext;
    [_txtUserName setDelegate:self];
    [_txtPassword setDelegate:self];
    [self txtUserNameField];
    [self txtPasswordField];
    emp=@"employer";
    
    
   
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
- (IBAction)keyboardResponce {
    [_txtUserName resignFirstResponder];
}
- (IBAction)txtkeyBoardDone {
    [_txtPassword resignFirstResponder];
}

-(void)txtUserNameField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtUserName setDelegate:self];
    self.txtUserName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *USERNAME" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtUserName.keyboardType=UIKeyboardTypeDefault;
}

-(void)txtPasswordField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtPassword setDelegate:self];
    self.txtPassword.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *PASSWORD" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtPassword.keyboardType=UIKeyboardTypeDefault;
}
- (IBAction)btnSignIn:(id)sender {
    if( ([self.txtUserName.text isEqualToString:@""]) || ([self.txtPassword.text isEqualToString:@""]))
    {
        [self showErrorAlert];
    }
    else{
       
        if ([self.btnApplicant isSelected ]) {
            
            self.group=@"applicant";
           
        }
        else if ([self.btnRecruiter isSelected]){
            
            self.group=@"recruiter";
            
            
        }
        else{
            self.group=@"employer";
            
        }
        
        [[SigninService sharedInstance] callSigninServiceForUserName:self.txtUserName.text password:self.txtPassword.text group:self.group withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
            
           
            if(isError){
                
                
                if(strMsg.length>0){
                    [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                    
                    
                }
                else{
                    //[self alertStatus:SomethingWrong :nil];
                    
                }
                
            }
            else{
                if ([self.btnEmployer isSelected]) {
                UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                DashBoardEmployerViewController *Dbpvc = [sb instantiateViewControllerWithIdentifier:@"DashBoardPageViewController"];
                   
                    modelLogInEmployer=[[ModelLogInEmployer alloc]initWithDictionary:result];
                   
                        NSLog(@"THe model dict is: %@",modelLogInEmployer.strAddress);
                   
                   
                      [self presentViewController:Dbpvc animated:YES completion:nil];
                   
                    
                }
                 if([self.btnApplicant isSelected])
                {
                    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                    CustomSectionViewController *Apvc = [sb instantiateViewControllerWithIdentifier:@"CustomSectionViewController"];
                    modelLogInApplicant=[[ModelLogInApplicant alloc]initWithDictionary:result];
                    
                    [self presentViewController:Apvc animated:YES completion:nil];
                    
                }
                if ([self.btnRecruiter isSelected]) {
                    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                    DashBoardRecruiterViewController *Dbapvc = [sb instantiateViewControllerWithIdentifier:@"DashBoardApplicantViewController"];
                    //Dbapvc.distRecruiter=result;
                    
                    modelLogInRecruiter=[[ModelLogInRecruiter alloc]initWithDictionary:result];
                    [self presentViewController:Dbapvc animated:YES completion:nil];
                }
                
            }
        }];
    }
}
-(void)showErrorAlert{
    
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Login"
                                                     message:@"fil in the username and password"
                                                    delegate:self
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles: nil];
    
    [alert show];
}



- (IBAction)btnEmployerImgChange {
    
    [self.btnEmployer isSelected];
    [self.btnRecruiter setSelected:NO];
    [self.btnApplicant setSelected:NO];
    [self.btnEmployer setSelected:YES];
     self.lblDynamicallyChange.text=@"As Employer";
    self.txtUserName.text=@"avinash.pandey";
    self.txtPassword.text=@"12345";
}

- (IBAction)btnRecruiterImgChange {
    [self.btnRecruiter isSelected];
    [self.btnRecruiter setSelected:YES];
    [self.btnApplicant setSelected:NO];
    [self.btnEmployer setSelected:NO];
     self.lblDynamicallyChange.text=@"As Recruiter";
    self.txtUserName.text=@"souvik.das";
    self.txtPassword.text=@"12345";
    
    }

- (IBAction)btnApplicantImgChange {
    
    [self.btnApplicant isSelected];
    [self.btnRecruiter setSelected:NO];
    [self.btnApplicant setSelected:YES];
    [self.btnEmployer setSelected:NO];
     self.lblDynamicallyChange.text=@"As Applicant";
    self.txtUserName.text=@"subham.dutta";
    self.txtPassword.text=@"12345";
}


    @end
