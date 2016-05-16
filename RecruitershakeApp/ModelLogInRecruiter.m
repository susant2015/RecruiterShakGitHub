//
//  ModelLogInRecruiter.m
//  RecruitershakeApp
//
//  Created by admin on 06/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelLogInRecruiter.h"

@implementation ModelLogInRecruiter


-(id)initWithDictionary:(NSDictionary *)dict
{
    NSLog(@"The initialize obj is:%@",dict);
    if (self = [super init]) {
        
        if ([dict objectForKey:@"id"]&&![[dict objectForKey:@"id"] isKindOfClass:[NSNull class]]) {
            self.strRecruiter_Id =[dict objectForKey:@"id"];
            NSLog(@"The id is:%@",self.strRecruiter_Id);
        }else{
            if ([dict objectForKey:@"id"]&&![[dict objectForKey:@"id"] isKindOfClass:[NSNull class]]) {
                self.strRecruiter_Id =[dict objectForKey:@"id"];
            }else{
                self.strRecruiter_Id =@"";
            }
        }
        
        if ([dict objectForKey:@"about"]&&![[dict objectForKey:@"about"] isKindOfClass:[NSNull class]]) {
            self.strAbout =[dict objectForKey:@"about"];
            NSLog(@"The About is%@",self.strAbout);
        }else{
            self.strAbout =@"";
        }
        
        if ([dict objectForKey:@"address1"]&&![[dict objectForKey:@"address1"] isKindOfClass:[NSNull class]]) {
            self.strAddress1 =[dict objectForKey:@"address1"];
        }else{
            self.strAddress1 =@"";
        }
        if ([dict objectForKey:@"address2"]&&![[dict objectForKey:@"address2"] isKindOfClass:[NSNull class]]) {
            self.strAddress2 =[dict objectForKey:@"address2"];
        }else{
            self.strAddress2 =@"";
        }
        
        if ([dict objectForKey:@"agency_name"]&&![[dict objectForKey:@"agency_name"] isKindOfClass:[NSNull class]]) {
            self.strAgency_Name =[dict objectForKey:@"agency_name"];
        }else{
            self.strAgency_Name =@"";
        }
        if ([dict objectForKey:@"city"]&&![[dict objectForKey:@"city"] isKindOfClass:[NSNull class]]) {
            self.strCity =[dict objectForKey:@"city"];
        }else{
            self.strCity =@"";
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
            self.strGplus_Url =[dict objectForKey:@"gplus_url"];
        }else{
            self.strGplus_Url =@"";
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
        
        if ([dict objectForKey:@"membership_type"]&&![[dict objectForKey:@"membership_type"] isKindOfClass:[NSNull class]]) {
            self.strMembership_Type =[dict objectForKey:@"membership_type"];
        }else{
            self.strMembership_Type =@"";
        }
        
        if ([dict objectForKey:@"occupation"]&&![[dict objectForKey:@"occupation"] isKindOfClass:[NSNull class]]) {
            self.strOccuption =[dict objectForKey:@"occupation"];
        }else{
            self.strOccuption =@"";
        }
        
        if ([dict objectForKey:@"phone_number"]&&![[dict objectForKey:@"phone_number"] isKindOfClass:[NSNull class]]) {
            self.strPhone_Number =[dict objectForKey:@"phone_number"];
        }else{
            self.strPhone_Number =@"";
        }
        
        if ([dict objectForKey:@"picture"]&&![[dict objectForKey:@"picture"] isKindOfClass:[NSNull class]]) {
            self.strPicture =[dict objectForKey:@"picture"];
        }else{
            self.strPicture =@"";
        }
        
        if ([dict objectForKey:@"quotes"]&&![[dict objectForKey:@"quotes"] isKindOfClass:[NSNull class]]) {
            self.strQuotes =[dict objectForKey:@"quotes"];
        }else{
            self.strQuotes =@"";
        }
        
        if ([dict objectForKey:@"state"]&&![[dict objectForKey:@"state"] isKindOfClass:[NSNull class]]) {
            self.strState =[dict objectForKey:@"state"];
        }else{
            self.strState =@"";
        }
        
        if ([dict objectForKey:@"subscription_date"]&&![[dict objectForKey:@"subscription_date"] isKindOfClass:[NSNull class]]) {
            self.strSubscription_Date =[dict objectForKey:@"subscription_date"];
        }else{
            self.strSubscription_Date =@"";
        }
        
        if ([dict objectForKey:@"twitter_url"]&&![[dict objectForKey:@"twitter_url"] isKindOfClass:[NSNull class]]) {
            self.strTwitter_Url =[dict objectForKey:@"twitter_url"];
        }else{
            self.strTwitter_Url =@"";
        }
        
        if ([dict objectForKey:@"url"]&&![[dict objectForKey:@"url"] isKindOfClass:[NSNull class]]) {
            self.strUrl =[dict objectForKey:@"url"];
        }else{
            self.strUrl =@"";
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
@end
