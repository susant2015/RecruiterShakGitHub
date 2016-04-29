//
//  ModelEmployerApplicantList.m
//  RecruitershakeApp
//
//  Created by admin on 29/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelEmployerApplicantList.h"

@implementation ModelEmployerApplicantList


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
    
    if ([dict objectForKey:@"job_id"]&&![[dict objectForKey:@"job_id"] isKindOfClass:[NSNull class]]) {
        self.strJobId =[dict objectForKey:@"job_id"];
       
    }else{
        
        self.strJobId =@"";
    }
    
    if ([dict objectForKey:@"apply_date"]&&![[dict objectForKey:@"apply_date"] isKindOfClass:[NSNull class]]) {
        self.strApplyDate =[dict objectForKey:@"apply_date"];
        
    }else{
        
        self.strApplyDate =@"";
    }
    return self;
}
@end
