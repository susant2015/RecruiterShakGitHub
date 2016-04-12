//
//  ForgotPasswordService.h
//  RecruitershakeApp
//
//  Created by admin on 30/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface ForgotPasswordService : WebServiceClass
+(ForgotPasswordService*)sharedInstance;

-(void)ForgotPasswordServiceForEmailName:(NSString *)strEmailName  withCompletionHandler:(CompletionHandler)handler;
@end
