//
//  ModelEmployerJobList.m
//  RecruitershakeApp
//
//  Created by admin on 06/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelEmployerJobList.h"

@implementation ModelEmployerJobList

-(id)initWithDictionary:(NSDictionary *)dict
{
    NSLog(@"The initialize obj is:%@",dict);
    if (self = [super init]) {
        
        if ([dict objectForKey:@"id"]&&![[dict objectForKey:@"id"] isKindOfClass:[NSNull class]]) {
            self.strId =[dict objectForKey:@"id"];
            NSLog(@"The id is:%@",self.strId);
        }else{
            if ([dict objectForKey:@"id"]&&![[dict objectForKey:@"id"] isKindOfClass:[NSNull class]]) {
                self.strId =[dict objectForKey:@"id"];
            }else{
                self.strId =@"";
            }
        }
        
        if ([dict objectForKey:@"created"]&&![[dict objectForKey:@"created"] isKindOfClass:[NSNull class]]) {
            self.strCreated =[dict objectForKey:@"created"];
            NSLog(@"The About is%@",self.strCreated);
        }else{
            self.strCreated =@"";
        }
        
        if ([dict objectForKey:@"description"]&&![[dict objectForKey:@"description"] isKindOfClass:[NSNull class]]) {
            self.strDescription =[dict objectForKey:@"description"];
            NSLog(@"The About is%@",self.strDescription);
        }else{
            self.strDescription =@"";
        }
        
        if ([dict objectForKey:@"educational_qualifiaction"]&&![[dict objectForKey:@"educational_qualifiaction"] isKindOfClass:[NSNull class]]) {
            self.strEducational_Qualification =[dict objectForKey:@"educational_qualifiaction"];
           
        }else{
            self.strEducational_Qualification =@"";
        }
        
        if ([dict objectForKey:@"job_id"]&&![[dict objectForKey:@"job_id"] isKindOfClass:[NSNull class]]) {
            self.strJob_Id =[dict objectForKey:@"job_id"];
            
        }else{
            self.strJob_Id =@"";
        }
       
        if ([dict objectForKey:@"location"]&&![[dict objectForKey:@"location"] isKindOfClass:[NSNull class]]) {
            self.strLocation =[dict objectForKey:@"location"];
            
        }else{
            self.strLocation =@"";
        }
        
        if ([dict objectForKey:@"skill_required"]&&![[dict objectForKey:@"skill_required"] isKindOfClass:[NSNull class]]) {
            self.strSkill_required =[dict objectForKey:@"skill_required"];
            
        }else{
            self.strSkill_required =@"";
        }
        
        if ([dict objectForKey:@"title"]&&![[dict objectForKey:@"title"] isKindOfClass:[NSNull class]]) {
            self.strTitle =[dict objectForKey:@"title"];
            
        }else{
            self.strTitle =@"";
        }
        
        if ([dict objectForKey:@"u_id"]&&![[dict objectForKey:@"u_id"] isKindOfClass:[NSNull class]]) {
            self.strUser_Id =[dict objectForKey:@"u_id"];
            
        }else{
            self.strUser_Id =@"";
        }
        
        if ([dict objectForKey:@"url_key"]&&![[dict objectForKey:@"url_key"] isKindOfClass:[NSNull class]]) {
            self.strUrl_Key =[dict objectForKey:@"url_key"];
            
        }else{
            self.strUrl_Key =@"";
        }
    }
    return self;
}
-(NSArray *)initwithArray:(NSArray *)arr{
   
    
    
    return arr;
}
@end
