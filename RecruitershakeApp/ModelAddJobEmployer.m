//
//  ModelAddJobEmployer.m
//  RecruitershakeApp
//
//  Created by admin on 07/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelAddJobEmployer.h"

@implementation ModelAddJobEmployer

-(id)initWithDictionary:(NSDictionary *)dict
{
    NSLog(@"The initialize obj is:%@",dict);
    if (self = [super init])
    {
        
        if ([dict objectForKey:@"jobtitle"]&&![[dict objectForKey:@"jobtitle"] isKindOfClass:[NSNull class]]) {
            self.strJobTitle =[dict objectForKey:@"jobtitle"];
            NSLog(@"The id is:%@",self.strJobTitle);
        }else{
            
           self.strJobTitle =@"";
            }
    }
    if ([dict objectForKey:@"desgnatn"]&&![[dict objectForKey:@"desgnatn"] isKindOfClass:[NSNull class]]) {
        self.strJobTitle =[dict objectForKey:@"desgnatn"];
        NSLog(@"The id is:%@",self.strJobDesignation);
    }else{
        
        self.strJobDesignation =@"";
    }
    
    if ([dict objectForKey:@"eduqua"]&&![[dict objectForKey:@"eduqua"] isKindOfClass:[NSNull class]]) {
        self.strEducational_Qualification =[dict objectForKey:@"eduqua"];
       
    }else{
        
        self.strEducational_Qualification =@"";
    }
    
    if ([dict objectForKey:@"skillreq"]&&![[dict objectForKey:@"skillreq"] isKindOfClass:[NSNull class]]) {
        self.strSkillRequired =[dict objectForKey:@"skillreq"];
        
    }else{
        
        self.strSkillRequired =@"";
    }
    
    if ([dict objectForKey:@"jobdes"]&&![[dict objectForKey:@"jobdes"] isKindOfClass:[NSNull class]]) {
        self.strJobDescription =[dict objectForKey:@"jobdes"];
        
    }else{
        
        self.strJobDescription =@"";
    }
    
    if ([dict objectForKey:@"location"]&&![[dict objectForKey:@"location"] isKindOfClass:[NSNull class]]) {
        self.strLocation =[dict objectForKey:@"location"];
        
    }else{
        
        self.strLocation =@"";
    }
    
    return self;
}



@end
