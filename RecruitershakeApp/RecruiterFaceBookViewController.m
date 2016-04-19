//
//  FaceBookViewController.m
//  RecruitershakeApp
//
//  Created by admin on 19/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "RecruiterFaceBookViewController.h"
#import "ModelLogInRecruiter.h"
#import "Constants.h"

@interface RecruiterFaceBookViewController ()

@end

@implementation RecruiterFaceBookViewController
    


@synthesize web;
- (void)viewDidLoad {
    [super viewDidLoad];
    
  
   
   
        NSURL *url = [NSURL URLWithString:modelLogInRecruiter.strFaceBook_Url];
    
    NSLog(@"The fb url is :%@",modelLogInRecruiter.strFaceBook_Url);
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
