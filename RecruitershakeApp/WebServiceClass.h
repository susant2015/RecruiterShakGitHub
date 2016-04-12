//
//  WebServiceClass.h
//  RecruitershakeApp
//
//  Created by admin on 01/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//
#import <Foundation/Foundation.h>
#define SomethingWrong @"Network Error. Please check your data connection."
#define ConnectionErrorMsg @"Network Error. Please check your data connection."

typedef NS_ENUM(NSUInteger, WebService) {
    SIGN_IN,
    SIGN_UP,
    FORGOT_PASSWORD,
    Employer_UserId,
    
};


typedef void(^CompletionHandler)(id result,BOOL isError,NSString *strMsg);

@interface WebServiceClass : NSObject
{
@protected
    NSURL *urlService;
    NSString *strSecreteKey;
    NSString *strAccessKey;
}

-(id)initWithService:(WebService)service;

@end
