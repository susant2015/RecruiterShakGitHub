//
//  ForgotPasswordViewController.m
//  RecruitershakeApp
//
//  Created by admin on 29/02/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import "ForgotPasswordViewController.h"
#import "ForgotPasswordService.h"
#import "LogInViewController.h"

@interface ForgotPasswordViewController ()<UITextFieldDelegate>

-(void)txtFieldForGotPassword;
@end

@implementation ForgotPasswordViewController

@synthesize txtFieldForgotPassword=_txtFieldForgotPassword;
- (void)viewDidLoad {
    [super viewDidLoad];
    [self txtFieldForGotPassword];
    self.txtFieldForgotPassword.text=@"subham.dutta@xigmapro.com";
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)txtFieldForGotPassword{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldForgotPassword setDelegate:self];
    self.txtFieldForgotPassword.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *EMAIL" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldForgotPassword.keyboardType=UIKeyboardTypeDefault;
}

- (IBAction)btnForgotSubmit {
    [[ForgotPasswordService sharedInstance] ForgotPasswordServiceForEmailName:self.txtFieldForgotPassword.text withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        if(isError){
            [[[UIAlertView alloc] initWithTitle:nil message:@"mismatched email" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                //[self alertStatus:SomethingWrong :nil];
                
            }
            
        }
        else{
            [[[UIAlertView alloc] initWithTitle:nil message:@"Check your mail" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
           
        }
    }];

}

- (IBAction)btnGotoSignInPage:(id)sender {
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LogInViewController *loginvc = [sb instantiateViewControllerWithIdentifier:@"LogInViewController"];
    [self presentViewController:loginvc animated:YES completion:nil];
}
@end
