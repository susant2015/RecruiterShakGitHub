//
//  SigninService.h
//  RecruitershakeApp
//
//  Created by admin on 01/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//
#import "WebServiceClass.h"

#import <Foundation/Foundation.h>


@interface SigninService : WebServiceClass
+(SigninService*)sharedInstance;

-(void)callSigninServiceForUserName:(NSString *)strUserName password:(NSString *)strPassword group:(NSString *)strGroup withCompletionHandler:(CompletionHandler)handler;


@end
