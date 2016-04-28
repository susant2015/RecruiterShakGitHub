//
//  EmployerApplicantListService.h
//  RecruitershakeApp
//
//  Created by admin on 28/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface EmployerApplicantListService : WebServiceClass

+(EmployerApplicantListService*)sharedInstance;

-(void)employerApplicantId:(NSString *)strUserId  withCompletionHandler:(CompletionHandler)handler;

@end
