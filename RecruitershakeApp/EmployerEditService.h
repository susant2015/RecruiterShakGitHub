//
//  EmployerEditService.h
//  RecruitershakeApp
//
//  Created by admin on 06/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface EmployerEditService : WebServiceClass
+(EmployerEditService*)sharedInstance;

-(void)employerUrlKey:(NSString *)strUrlKey empId:(NSString *)strId jobTitle:(NSString *)strJobTitle desgnation:(NSString *)strDesgn eduQualification:(NSString *)strEduQual skillRequired:(NSString *)strSkillRequired jobDesc:(NSString *)strJobDesc location:(NSString *)strLocation withCompletionHandler:(CompletionHandler)handler;
@end
