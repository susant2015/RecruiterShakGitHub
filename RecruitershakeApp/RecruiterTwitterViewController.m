//
//  RecruiterTwitterViewController.m
//  RecruitershakeApp
//
//  Created by admin on 18/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "RecruiterTwitterViewController.h"
#import "ModelLogInRecruiter.h"
#import "Constants.h"


@interface RecruiterTwitterViewController ()

@end

@implementation RecruiterTwitterViewController


@synthesize web;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSURL *url = [NSURL URLWithString:modelLogInRecruiter.strTwitter_Url];
    
    NSLog(@"The fb url is :%@",modelLogInRecruiter.strTwitter_Url);
    NSMutableURLRequest *requestObj = [NSMutableURLRequest requestWithURL:url];
    [requestObj setValue:@"Safari/537.1" forHTTPHeaderField:@"User_Agent"];
    [self.web setDelegate:nil];
    [self.web loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
