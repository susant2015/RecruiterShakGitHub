//
//  ApplicantWorkingExprienceService.m
//  RecruitershakeApp
//
//  Created by admin on 21/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ApplicantWorkingExprienceService.h"

@implementation ApplicantWorkingExprienceService{
    
    NSMutableArray *arr;
}

+(ApplicantWorkingExprienceService*)sharedInstance{
    
    static ApplicantWorkingExprienceService *applicantWorkExp=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        applicantWorkExp=[[ApplicantWorkingExprienceService alloc] initWithService:Employer_UserId];
    });
    return applicantWorkExp;
    
}

-(void) applicantUserId:(NSString *)strUserId withCompletionHandler:(CompletionHandler)handler{
    
    NSString *post = [[NSString alloc] initWithFormat:@"action=%@&u_id=%@",@"education_listing",strUserId];
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
                NSDictionary *jsonResponeDict=[NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
                NSLog(@"THE JSONDIST%@",jsonResponeDict);
                arr=[[NSMutableArray alloc] init];
                [arr addObject:jsonResponeDict];
                NSLog(@"The arr is :%@",[arr objectAtIndex:0]);
                
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
