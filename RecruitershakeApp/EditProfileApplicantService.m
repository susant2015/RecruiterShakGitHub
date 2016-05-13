//
//  EditProfileApplicant.m
//  RecruitershakeApp
//
//  Created by admin on 13/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EditProfileApplicantService.h"

@implementation EditProfileApplicantService
+(EditProfileApplicantService*)sharedInstance{
    
    static EditProfileApplicantService *editApplicant=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        editApplicant=[[EditProfileApplicantService alloc] initWithService:Employer_UserId];
    });
    return editApplicant;
    
}

-(void)editProfileApplicantUserId:(NSString *)strUserId oldPassword:(NSString *)strOldPwd newPassword:(NSString *)strNewPwd conformPassword:(NSString *)strConPwd firstName:(NSString *)strFirstName lastName:(NSString *)strLastName phoneNumber:(NSString *)strPhoneNumber  addressOne:(NSString *)strAddressOne addressTwo:(NSString *)strAddressTwo city:(NSString *)strCity state:(NSString *)strState country:(NSString *)strCountry zipCode:(NSString *)strZipCode fbUrl:(NSString *)strFbUrl twUrl:(NSString *)strTwUrl gPlus:(NSString *)strGplusUrl occupation:(NSString *)strOccupatio skill:(NSString *)strSkill about:(NSString *)strAbout quotes:(NSString *)strQuotes   withCompletionHandler:(CompletionHandler)handler{
    
    NSString *post = [[NSString alloc] initWithFormat:@"action=%@&id=%@&oldpass=%@&nwpass=%@&conpass=%@&first_name=%@&last_name=%@&phone_number=%@&address1=%@&address2=%@&city=%@&state=%@&country=%@&zip_code=%@&fb_url=%@&tw_url=%@&gpls_url=%@&occupation=%@&skills=%@&about=%@&quotes=%@",@"employer_updateprofile",strUserId,strOldPwd,strNewPwd,strConPwd,strFirstName,strLastName,strPhoneNumber,strAddressOne,strAddressTwo,strCity,strState,strCountry,strZipCode,strFbUrl,strTwUrl,strGplusUrl,strOccupatio,strSkill,strAbout,strQuotes];
    
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
        }else{
            if (data.length >0) {
                NSLog(@"The data is:%@",data);
                NSError *error;
                // NSLog(@"Login Response : %@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
                NSLog(@"Login Response :%@",[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
                NSDictionary *jsonResponeDict=[NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
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
