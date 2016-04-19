//
//  DashBoardApplicantViewController.m
//  RecruitershakeApp
//
//  Created by admin on 01/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "DashBoardRecruiterViewController.h"
#import "LogInViewController.h"
#import "ModelLogInRecruiter.h"
#import "Constants.h"
#import "EditProfileRecruiter.h"
#import "ModelLogInRecruiter.h"
#import "AboutRecruiterViewController.h"
@interface DashBoardRecruiterViewController ()

@end

@implementation DashBoardRecruiterViewController

@synthesize lblRecruiterAgencyInfo;
@synthesize lblUrl;
@synthesize imgRecruiter;

- (void)viewDidLoad {
    [super viewDidLoad];
      
    
    self.lblRecruiterAgencyInfo.text=modelLogInRecruiter.strAgency_Name;
    self.lblUrl.text=modelLogInRecruiter.strUrl;
    self.imgRecruiter.image= [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInRecruiter.strPicture]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnrecruiterEdit {
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileRecruiter *Editpvc = [sb instantiateViewControllerWithIdentifier:@"EditProfileRecruiter"];
    
    [self presentViewController:Editpvc animated:YES completion:nil];
}
- (IBAction)btnCompanyProfile {
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AboutRecruiterViewController *Aboutpvc = [sb instantiateViewControllerWithIdentifier:@"AboutRecruiterViewController"];
    
    [self presentViewController:Aboutpvc animated:YES completion:nil];
}
@end
