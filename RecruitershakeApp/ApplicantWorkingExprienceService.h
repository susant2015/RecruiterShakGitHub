//
//  ApplicantWorkingExprienceService.h
//  RecruitershakeApp
//
//  Created by admin on 21/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface ApplicantWorkingExprienceService : WebServiceClass

+(ApplicantWorkingExprienceService *)sharedInstance;
-(void)applicantUserId:(NSString *)strUserId withCompletionHandler:(CompletionHandler)handler;
@end
