//
//  ModelUser.m
//  RecruitershakeApp
//
//  Created by admin on 05/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelLogInEmployer.h"

@implementation ModelLogInEmployer



-(id)initWithDictionary:(NSDictionary *)dict
{
    NSLog(@"The initialize obj is:%@",dict);
    if (self = [super init]) {
        
        if ([dict objectForKey:@"about"]&&![[dict objectForKey:@"about"] isKindOfClass:[NSNull class]]) {
            self.strAbout =[dict objectForKey:@"about"];
            NSLog(@"The strAbout is:%@",self.strAbout);
        }else{
            if ([dict objectForKey:@"about"]&&![[dict objectForKey:@"about"] isKindOfClass:[NSNull class]]) {
                self.strAbout =[dict objectForKey:@"about"];
            }else{
                self.strAbout =@"";
            }
        }
        
        
        if ([dict objectForKey:@"address"]&&![[dict objectForKey:@"address"] isKindOfClass:[NSNull class]]) {
            self.strAddress =[dict objectForKey:@"address"];
            NSLog(@"The address is%@",self.strAddress);
        }else{
            self.strAddress =@"";
        }
        if ([dict objectForKey:@"city"]&&![[dict objectForKey:@"city"] isKindOfClass:[NSNull class]]) {
            self.strCity =[dict objectForKey:@"city"];
            
        }else{
            self.strCity =@"";
        }
        if ([dict objectForKey:@"phone_number"]&&![[dict objectForKey:@"phone_number"] isKindOfClass:[NSNull class]]) {
            self.strPhone_Number =[dict objectForKey:@"phone_number"];
            
        }else{
            self.strPhone_Number =@"";
        }
        if ([dict objectForKey:@"company_name"]&&![[dict objectForKey:@"company_name"] isKindOfClass:[NSNull class]]) {
            self.strCompany_Name =[dict objectForKey:@"company_name"];
            
        }else{
            self.strCompany_Name =@"";
        }
        if ([dict objectForKey:@"country"]&&![[dict objectForKey:@"country"] isKindOfClass:[NSNull class]]) {
            self.strCountry =[dict objectForKey:@"country"];
            
        }else{
            self.strCountry =@"";
        }
        
        if ([dict objectForKey:@"email"]&&![[dict objectForKey:@"email"] isKindOfClass:[NSNull class]]) {
            self.strEmail =[dict objectForKey:@"email"];
            
        }else{
            self.strEmail =@"";
        }
        
        if ([dict objectForKey:@"facebook_url"]&&![[dict objectForKey:@"facebook_url"] isKindOfClass:[NSNull class]]) {
            self.strFaceBook_Url =[dict objectForKey:@"facebook_url"];
            
        }else{
            self.strFaceBook_Url =@"";
        }
        if ([dict objectForKey:@"first_name"]&&![[dict objectForKey:@"first_name"] isKindOfClass:[NSNull class]]) {
            self.strFirst_Name =[dict objectForKey:@"first_name"];
            
        }else{
            self.strFirst_Name =@"";
        }
        if ([dict objectForKey:@"gplus_url"]&&![[dict objectForKey:@"gplus_url"] isKindOfClass:[NSNull class]]) {
            self.strGPlus_Url =[dict objectForKey:@"gplus_url"];
            
        }else{
            self.strGPlus_Url =@"";
        }
        
        if ([dict objectForKey:@"gplus_url"]&&![[dict objectForKey:@"gplus_url"] isKindOfClass:[NSNull class]]) {
            self.strGPlus_Url =[dict objectForKey:@"gplus_url"];
            
        }else{
            self.strGPlus_Url =@"";
        }
        
        if ([dict objectForKey:@"group"]&&![[dict objectForKey:@"group"] isKindOfClass:[NSNull class]]) {
            self.strGroup =[dict objectForKey:@"group"];
            
        }else{
            self.strGroup =@"";
        }
        
        if ([dict objectForKey:@"last_name"]&&![[dict objectForKey:@"last_name"] isKindOfClass:[NSNull class]]) {
            self.strLast_Name =[dict objectForKey:@"last_name"];
            
        }else{
            self.strLast_Name =@"";
        }
        
        if ([dict objectForKey:@"id"]&&![[dict objectForKey:@"id"] isKindOfClass:[NSNull class]]) {
            self.strId =[dict objectForKey:@"id"];
            
        }else{
            self.strId =@"";
        }
        
        if ([dict objectForKey:@"picture"]&&![[dict objectForKey:@"picture"] isKindOfClass:[NSNull class]]) {
            self.strPicture =[dict objectForKey:@"picture"];
            
        }else{
            self.strPicture =@"";
        }
        
        if ([dict objectForKey:@"state"]&&![[dict objectForKey:@"state"] isKindOfClass:[NSNull class]]) {
            self.strState =[dict objectForKey:@"state"];
            
        }else{
            self.strState =@"";
        }
        
        if ([dict objectForKey:@"twitter_url"]&&![[dict objectForKey:@"twitter_url"] isKindOfClass:[NSNull class]]) {
            self.strTwitter_Url =[dict objectForKey:@"twitter_url"];
            
        }else{
            self.strTwitter_Url =@"";
        }
        
        if ([dict objectForKey:@"username"]&&![[dict objectForKey:@"username"] isKindOfClass:[NSNull class]]) {
            self.strUser_Name =[dict objectForKey:@"username"];
            
        }else{
            self.strUser_Name =@"";
        }
        if ([dict objectForKey:@"zip_code"]&&![[dict objectForKey:@"zip_code"] isKindOfClass:[NSNull class]]) {
            self.strZip_Code =[dict objectForKey:@"zip_code"];
            
        }else{
            self.strZip_Code =@"";
        }
        if ([dict objectForKey:@"password"]&&![[dict objectForKey:@"password"] isKindOfClass:[NSNull class]]) {
            self.strPassword =[dict objectForKey:@"password"];
            
        }else{
            self.strPassword =@"";
        }
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.strAddress = [decoder decodeObjectForKey:@"address"];
        NSLog(@"The decider address is:%@",self.strAddress);
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_strAddress forKey:@"address"];
     NSLog(@"The ecoder address is:%@",self.strAddress);
}


@end
