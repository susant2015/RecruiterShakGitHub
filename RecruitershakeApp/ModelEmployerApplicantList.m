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
   
    if (self = [super init]) {
        
        
        
            self.strFisrst_Name =[dict objectForKey:@"first_name"];
        
            self.strLast_Name =[dict objectForKey:@"last_name"];
        
                
                
            self.strJobId =[dict objectForKey:@"job_id"];
        
        
            self.strApplyDate =[dict objectForKey:@"apply_date"];
        
             self.strId =[dict objectForKey:@"id"];
    }
    
     NSLog(@"The self is is%@",self.strId);
     NSLog(@"The self is is%@",self.strFisrst_Name);
     NSLog(@"The self is is%@",self.strLast_Name);
     NSLog(@"The self is is%@",self.strJobId);
     NSLog(@"The self is is%@",self.strApplyDate);
    return self;
}
    
@end
