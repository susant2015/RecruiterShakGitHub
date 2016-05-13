//
//  EditProfileApplicant.h
//  RecruitershakeApp
//
//  Created by admin on 13/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface EditProfileApplicantService : WebServiceClass
+(EditProfileApplicantService *)sharedInstance;

-(void)editProfileApplicantUserId:(NSString *)strUserId oldPassword:(NSString *)strOldPwd newPassword:(NSString *)strNewPwd conformPassword:(NSString *)strConPwd firstName:(NSString *)strFirstName lastName:(NSString *)strLastName phoneNumber:(NSString *)strPhoneNumber  addressOne:(NSString *)strAddressOne addressTwo:(NSString *)strAddressTwo city:(NSString *)strCity state:(NSString *)strState country:(NSString *)strCountry zipCode:(NSString *)strZipCode fbUrl:(NSString *)strFbUrl twUrl:(NSString *)strTwUrl gPlus:(NSString *)strGplusUrl occupation:(NSString *)strOccupatio skill:(NSString *)strSkill about:(NSString *)strAbout quotes:(NSString *)strQuotes   withCompletionHandler:(CompletionHandler)handler;
@end
