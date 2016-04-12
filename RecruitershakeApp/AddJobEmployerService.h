//
//  AddJobEmployerService.h
//  RecruitershakeApp
//
//  Created by admin on 07/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface AddJobEmployerService : WebServiceClass

+(AddJobEmployerService*)sharedInstance;

-(void)addEmployerJobUserId:(NSString *)strUserId  jobTitle:(NSString *)strJobTitle designation:(NSString *)strDesignation eduQualification:(NSString *)strEduQualification skillRequired:(NSString *)strSkillRequired jobDescription:(NSString *)strJobDesc location:(NSString *)strLocation withCompletionHandler:(CompletionHandler)handler;

@end
