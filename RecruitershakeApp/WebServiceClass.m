//
//  WebServiceClass.m
//  RecruitershakeApp
//
//  Created by admin on 01/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//
#import "SigninService.h"
#import "WebServiceClass.h"
//Development
#define _k_Development_BaseURL @"http://website-design-company.in/dev13/services.php"



NSString static *strAllservices[]={
    [SIGN_IN]                               =       @"",
    [SIGN_UP]                               =       @"",
    [FORGOT_PASSWORD]                       =       @"",
    [Employer_UserId]                   =       @"",
    [EditRecruiter]                      =      @"",
};


@implementation WebServiceClass

-(id)initWithService:(WebService)service
{
    if (self=[super init])
    {
        //urlService=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@",_k_Development_BaseURL,strAllservices[service]]];
    }
    return self;
}




@end
