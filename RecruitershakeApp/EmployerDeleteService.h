//
//  EmployerDeleteService.h
//  RecruitershakeApp
//
//  Created by admin on 06/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface EmployerDeleteService : WebServiceClass

+(EmployerDeleteService*)sharedInstance;

-(void)employerUrlKey:(NSString *)strUrlKey empId:(NSString *)strId  withCompletionHandler:(CompletionHandler)handler;

@end
