//
//  EmployerJobListService.h
//  RecruitershakeApp
//
//  Created by admin on 07/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface EmployerJobListService : WebServiceClass

+(EmployerJobListService*)sharedInstance;

-(void)employerJobListUserId:(NSString *)strUserId  withCompletionHandler:(CompletionHandler)handler;

@end
