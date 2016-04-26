//
//  ModelRecruiterMyLeads.m
//  RecruitershakeApp
//
//  Created by admin on 26/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelRecruiterMyLeads.h"

@implementation ModelRecruiterMyLeads


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
        NSLog(@"The id is:%@",self.strLast_Name);
    }else{
        
        self.strLast_Name =@"";
    }
    
    if ([dict objectForKey:@"occupation"]&&![[dict objectForKey:@"occupation"] isKindOfClass:[NSNull class]]) {
        self.strOccupation =[dict objectForKey:@"occupation"];
        
    }else{
        
        self.strOccupation =@"";
    }
    
    if ([dict objectForKey:@"education_qualification"]&&![[dict objectForKey:@"education_qualification"] isKindOfClass:[NSNull class]]) {
        self.strEducation_Qualification =[dict objectForKey:@"education_qualification"];
        
    }else{
        
        self.strEducation_Qualification =@"";
    }
    
    if ([dict objectForKey:@"email"]&&![[dict objectForKey:@"email"] isKindOfClass:[NSNull class]]) {
        self.strEmail =[dict objectForKey:@"email"];
        
    }else{
        
        self.strEmail =@"";
    }
    
    if ([dict objectForKey:@"phone_number"]&&![[dict objectForKey:@"phone_number"] isKindOfClass:[NSNull class]]) {
        self.strPhone_Number =[dict objectForKey:@"phone_number"];
        
    }else{
        
        self.strPhone_Number =@"";
    }
    
    return self;
}
@end
