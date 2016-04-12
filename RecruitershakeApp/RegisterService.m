//
//  RegisterService.m
//  RecruitershakeApp
//
//  Created by admin on 30/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "RegisterService.h"

@implementation RegisterService


+(RegisterService*)sharedInstance{
    
    static RegisterService *signinService=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        signinService=[[RegisterService alloc] initWithService:SIGN_IN];
    });
    return signinService;
    
}
-(void)callRegisterServiceForUserName:(NSString *)strUserName password:(NSString *)strPassword group:(NSString *)strGroup strEmail:(NSString*)email FirstName:(NSString*)strFirstname lastName:(NSString*)strLastname phoneNumber:(NSString*)strPhoneNumber address1:(NSString*)strAddress1 address2:(NSString*)strAddress2  city:(NSString*)strcity country:(NSString*)strcountry state:(NSString*)strState zipcode:(NSString*)strZipCode occupation:(NSString*)strOccupation withCompletionHandler:(CompletionHandler)handler{
    
    NSString *post = [[NSString alloc] initWithFormat:@"action=%@&group=%@&username=%@&password=%@&email=%@&first_name=%@&last_name=%@&phone_number=%@&address1=%@&address2=%@&city=%@&country=%@&state=%@&zip_code=%@&zip_code=%@",@"signup",strGroup,strFirstname,strUserName,strPassword,email,strLastname,strPhoneNumber,strAddress1,strAddress2,strcity,strcountry,strState,strZipCode,strOccupation];
    
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
                NSLog(@"THE JSINRESONDIST%@",jsonResponeDict);
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
