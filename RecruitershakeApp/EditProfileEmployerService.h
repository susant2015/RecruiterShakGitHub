//
//  EditProfileEmployerService.h
//  RecruitershakeApp
//
//  Created by admin on 11/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface EditProfileEmployerService : WebServiceClass

+(EditProfileEmployerService *)sharedInstance;

-(void)editProfileEmployerUserId:(NSString *)strUserId oldPassword:(NSString *)strOldPwd newPassword:(NSString *)strNewPwd conformPassword:(NSString *)strConPwd firstName:(NSString *)strFirstName lastName:(NSString *)strLastName phoneNumber:(NSString *)strPhoneNumber addressOne:(NSString *)strAddressOne addressTwo:(NSString *)strAddressTwo city:(NSString *)strCity state:(NSString *)strState country:(NSString *)strCountry zipCode:(NSString *)strZipCode fbUrl:(NSString *)strFbUrl twUrl:(NSString *)strTwUrl gPlus:(NSString *)strGplusUrl companyName:(NSString *)strCompanyName orgType:(NSString *)strOrgType about:(NSString *)strAbout withCompletionHandler:(CompletionHandler)handler;
@end
