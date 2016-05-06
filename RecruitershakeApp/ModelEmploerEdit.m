//
//  ModelEmploerEdit.m
//  RecruitershakeApp
//
//  Created by admin on 06/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelEmploerEdit.h"

@implementation ModelEmploerEdit

-(id)initWithDictionary:(NSDictionary *)dict{
    
    if (self = [super init])
    {
        if ([dict objectForKey:@"title"]&&![[dict objectForKey:@"title"] isKindOfClass:[NSNull class]]) {
            self.strTitleEmpJob =[dict objectForKey:@"title"];
        }else{
            
            self.strTitleEmpJob =@"";
        }
        if ([dict objectForKey:@"educational_qualifiaction"]&&![[dict objectForKey:@"educational_qualifiaction"] isKindOfClass:[NSNull class]]) {
            self.strEmpEduQual =[dict objectForKey:@"educational_qualifiaction"];
        }else{
            
            self.strEmpEduQual =@"";
        }
        if ([dict objectForKey:@"location"]&&![[dict objectForKey:@"location"] isKindOfClass:[NSNull class]]) {
            self.strEmpLocation =[dict objectForKey:@"location"];
        }else{
            
            self.strEmpEduQual =@"";
        }
        if ([dict objectForKey:@"designation"]&&![[dict objectForKey:@"designation"] isKindOfClass:[NSNull class]]) {
            self.strEmpPosition =[dict objectForKey:@"designation"];
        }else{
            
            self.strEmpPosition =@"";
        }
        if ([dict objectForKey:@"description"]&&![[dict objectForKey:@"description"] isKindOfClass:[NSNull class]]) {
            self.strEmpDesc =[dict objectForKey:@"description"];
        }else{
            
            self.strEmpDesc =@"";
        }
        if ([dict objectForKey:@"skill_required"]&&![[dict objectForKey:@"skill_required"] isKindOfClass:[NSNull class]]) {
            self.strEmpSkillRequired =[dict objectForKey:@"skill_required"];
        }else{
            
            self.strEmpSkillRequired =@"";
        }
        if ([dict objectForKey:@"url_key"]&&![[dict objectForKey:@"url_key"] isKindOfClass:[NSNull class]]) {
            self.strUrlKey =[dict objectForKey:@"url_key"];
        }else{
            
            self.strUrlKey =@"";
        }
        if ([dict objectForKey:@"u_id"]&&![[dict objectForKey:@"u_id"] isKindOfClass:[NSNull class]]) {
            self.strEmpId =[dict objectForKey:@"u_id"];
        }else{
            
            self.strEmpId =@"";
        }
    }
    return self;
}
@end
