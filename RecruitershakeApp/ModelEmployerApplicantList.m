//
//  ModelEmployerApplicantList.m
//  RecruitershakeApp
//
//  Created by admin on 29/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelEmployerApplicantList.h"

@implementation ModelEmployerApplicantList


  -(id)initWithDictionary:(NSMutableArray *)dict
{
   
        
   
    if (self = [super init]) {
        
            for(NSDictionary *dic in dict) {
        
            self.strFisrst_Name =[dic objectForKey:@"first_name"];
        
            self.strLast_Name =[dic objectForKey:@"last_name"];
        
                
                
            self.strJobId =[dic objectForKey:@"job_id"];
        
        
            self.strApplyDate =[dic objectForKey:@"apply_date"];
        
             self.strId =[dic objectForKey:@"id"];
    }
    }
    
     NSLog(@"The self is is%@",self.strId);
     NSLog(@"The self is is%@",self.strFisrst_Name);
     NSLog(@"The self is is%@",self.strLast_Name);
     NSLog(@"The self is is%@",self.strJobId);
     NSLog(@"The self is is%@",self.strApplyDate);
    return self;
}







    
@end
