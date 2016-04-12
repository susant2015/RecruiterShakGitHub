//
//  RegisterService.h
//  RecruitershakeApp
//
//  Created by admin on 30/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface RegisterService : WebServiceClass
+(RegisterService*)sharedInstance;

-(void)callRegisterServiceForUserName:(NSString *)strUserName password:(NSString *)strPassword group:(NSString *)strGroup strEmail:(NSString*)email FirstName:(NSString*)strFirstname lastName:(NSString*)strLastname phoneNumber:(NSString*)strPhoneNumber address1:(NSString*)strAddress1 address2:(NSString*)strAddress2  city:(NSString*)strcity country:(NSString*)strcountry state:(NSString*)strState zipcode:(NSString*)strZipCode occupation:(NSString*)strOccupation withCompletionHandler:(CompletionHandler)handler;

@end
