//
//  DashBoardPageViewController.m
//  RecruitershakeApp
//
//  Created by admin on 29/02/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import "DashBoardEmployerViewController.h"
#import "EmployerJobListViewController.h"
#import "Constants.h"
#import "ModelLogInEmployer.h"
#import "EmployerJobListService.h"
#import "ModelEmployerJobList.h"
#import "EditProfileEmployerViewController.h"
@interface DashBoardEmployerViewController ()

@end

@implementation DashBoardEmployerViewController


@synthesize ImgPicture=_ImgPicture;
@synthesize lblEmpFirstName;
@synthesize lblEmpLastName;
@synthesize lblEmpEmailId;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lblEmpFirstName.text=modelLogInEmployer.strFirst_Name;
    self.lblEmpLastName.text=modelLogInEmployer.strLast_Name;
    self.lblEmpEmailId.text=modelLogInEmployer.strEmail;
   self.ImgPicture.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInEmployer.strPicture]]];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}
-(void) viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
   
    
}



- (IBAction)btnEmployerEdit {
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileEmployerViewController *EditPEvc = [sb instantiateViewControllerWithIdentifier:@"EditProfileEmployerViewController"];
    [self presentViewController:EditPEvc animated:YES completion:nil];
    
    
}
@end
