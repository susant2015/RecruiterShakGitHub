//
//  ModelRegister.m
//  RecruitershakeApp
//
//  Created by admin on 08/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelRegister.h"

@implementation ModelRegister


-(id)initWithDictionary:(NSDictionary *)dict
{
    NSLog(@"The initialize obj is:%@",dict);
    if (self = [super init])
    {
        
        if ([dict objectForKey:@"first_name"]&&![[dict objectForKey:@"first_name"] isKindOfClass:[NSNull class]]) {
            self.strFisrst_Name =[dict objectForKey:@"first_name"];
            NSLog(@"The id is:%@",self.strFisrst_Name);
        }else{
            
            self.strFisrst_Name =@"";
        }
    }
    if ([dict objectForKey:@"last_name"]&&![[dict objectForKey:@"last_name"] isKindOfClass:[NSNull class]]) {
        self.strLast_Name =[dict objectForKey:@"last_name"];
        
    }else{
        
        self.strLast_Name =@"";
    }
    
    if ([dict objectForKey:@"email"]&&![[dict objectForKey:@"email"] isKindOfClass:[NSNull class]]) {
        self.strEmail =[dict objectForKey:@"email"];
        
    }else{
        
        self.strEmail =@"";
    }
    
    
    if ([dict objectForKey:@"username"]&&![[dict objectForKey:@"username"] isKindOfClass:[NSNull class]]) {
        self.strUser_Name =[dict objectForKey:@"username"];
        
    }else{
        
        self.strUser_Name =@"";
    }
    
    
    if ([dict objectForKey:@"password"]&&![[dict objectForKey:@"password"] isKindOfClass:[NSNull class]]) {
        self.strPassword =[dict objectForKey:@"password"];
        
    }else{
        
        self.strPassword =@"";
    }
    
    if ([dict objectForKey:@"phone_number"]&&![[dict objectForKey:@"phone_number"] isKindOfClass:[NSNull class]]) {
        self.strPhone_Number =[dict objectForKey:@"phone_number"];
        
    }else{
        
        self.strPhone_Number =@"";
    }
    
    if ([dict objectForKey:@"address1"]&&![[dict objectForKey:@"address1"] isKindOfClass:[NSNull class]]) {
        self.strAddress_Line1 =[dict objectForKey:@"address1"];
        
    }else{
        
        self.strAddress_Line1 =@"";
    }
    
    if ([dict objectForKey:@"address2"]&&![[dict objectForKey:@"address2"] isKindOfClass:[NSNull class]]) {
        self.strAddress_Line2 =[dict objectForKey:@"address2"];
        
    }else{
        
        self.strAddress_Line2 =@"";
    }
    
    if ([dict objectForKey:@"city"]&&![[dict objectForKey:@"city"] isKindOfClass:[NSNull class]]) {
        self.strCity =[dict objectForKey:@"city"];
        
    }else{
        
        self.strCity =@"";
    }
    
    if ([dict objectForKey:@"state"]&&![[dict objectForKey:@"state"] isKindOfClass:[NSNull class]]) {
        self.strState =[dict objectForKey:@"state"];
        
    }else{
        
        self.strState =@"";
    }
    
    if ([dict objectForKey:@"country"]&&![[dict objectForKey:@"country"] isKindOfClass:[NSNull class]]) {
        self.strCountry =[dict objectForKey:@"country"];
        
    }else{
        
        self.strCountry =@"";
    }
    
    if ([dict objectForKey:@"zip_code"]&&![[dict objectForKey:@"zip_code"] isKindOfClass:[NSNull class]]) {
        self.strZip_Code =[dict objectForKey:@"zip_code"];
        
    }else{
        
        self.strZip_Code =@"";
    }
    
    if ([dict objectForKey:@"occupation"]&&![[dict objectForKey:@"occupation"] isKindOfClass:[NSNull class]]) {
        self.strOccupation =[dict objectForKey:@"occupation"];
        
    }else{
        
        self.strOccupation =@"";
    }
    return self;
}
@end
