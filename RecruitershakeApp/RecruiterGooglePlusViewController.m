//
//  RecruiterGooglePlusViewController.m
//  RecruitershakeApp
//
//  Created by admin on 19/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "RecruiterGooglePlusViewController.h"
#import "ModelLogInRecruiter.h"
#import "Constants.h"

@interface RecruiterGooglePlusViewController ()

@end

@implementation RecruiterGooglePlusViewController


@synthesize web;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    NSURL *url = [NSURL URLWithString:modelLogInRecruiter.strGplus_Url];
    
    NSLog(@"The fb url is :%@",modelLogInRecruiter.strGplus_Url);
    NSMutableURLRequest *requestObj = [NSMutableURLRequest requestWithURL:url];
    [requestObj setValue:@"Safari/537.1" forHTTPHeaderField:@"User_Agent"];
    [self.web setDelegate:nil];
    [self.web loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
