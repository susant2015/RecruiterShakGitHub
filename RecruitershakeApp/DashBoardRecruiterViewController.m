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
#import "EditProfileViewController.h"
#import "ModelLogInRecruiter.h"
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
    EditProfileViewController *Editpvc = [sb instantiateViewControllerWithIdentifier:@"EditProfileViewController"];
    
    [self presentViewController:Editpvc animated:YES completion:nil];
}
@end
