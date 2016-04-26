//
//  RecruiterMyLeadsList.h
//  RecruitershakeApp
//
//  Created by admin on 26/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface RecruiterMyLeadService : WebServiceClass


+(RecruiterMyLeadService*)sharedInstance;

-(void)recruiterMyLeadsId:(NSString *)strUserId  withCompletionHandler:(CompletionHandler)handler;


@end
