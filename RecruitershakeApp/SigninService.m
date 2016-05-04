//
//  SigninService.m
//  RecruitershakeApp
//
//  Created by admin on 01/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"
#import "SigninService.h"
#import "AppDelegate.h"
#import "DashBoardEmployerViewController.h"
#import "ModelLogInEmployer.h"
#import "Constants.h"
@implementation SigninService{
    
    NSDictionary *jsonResponeDict;
}

+(SigninService*)sharedInstance{
    
    static SigninService *signinService=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        signinService=[[SigninService alloc] initWithService:SIGN_IN];
    });
    return signinService;
    
}
-(void)callSigninServiceForUserName:(NSString *)strUserName password:(NSString *)strPassword group:(NSString *)strGroup  withCompletionHandler:(CompletionHandler)handler{
    NSString *post = [[NSString alloc] initWithFormat:@"action=%@&username=%@&password=%@&group=%@",@"login",strUserName,strPassword,strGroup];
    
    NSLog(@"post data:%@",post);
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu",(unsigned long)[postData length]];
    NSURL *url=[NSURL URLWithString:@"http://website-design-company.in/dev13/services.php"];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:20.0];
    NSLog(@"The request is:%@",request);
    
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Current-Type"];
    
    [request setHTTPBody:postData];
    //  NSURLConnection *conn = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    
    NSURLSessionConfiguration *sessionConfig=[NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session=[NSURLSession sessionWithConfiguration:sessionConfig delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    NSURLSessionDataTask *dataTask=[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSLog(@"The dataTask is :%@",dataTask);
        if (error) {
            handler(nil,YES,SomethingWrong);
            handler(nil,YES,@"Error message");
        }else{
            if (data.length >0) {
                NSLog(@"The data is:%@",data);
                NSError *error;
               // NSLog(@"Login Response : %@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
                NSLog(@"Login Response :%@",[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
                jsonResponeDict=[NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
                NSLog(@"THE JSONDIST%@",jsonResponeDict);
                //handler(nil,YES,@"Sucess message");
                
                if ([[jsonResponeDict objectForKey:@"status"]isEqualToString:@"1"])
                {
                    
                    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"isLogin"];
                    handler(jsonResponeDict,NO,[jsonResponeDict objectForKey:@"msg"]);
                    NSLog(@"sucessful status");
                    
                    
                }else{
                    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"isLogin"];
                    handler(nil,YES,[jsonResponeDict objectForKey:@"msg"]);
                }
                
            }else{
                handler(nil,YES,SomethingWrong);
                
            }
        }
    }];
    
    [dataTask resume];

  
}



@end
