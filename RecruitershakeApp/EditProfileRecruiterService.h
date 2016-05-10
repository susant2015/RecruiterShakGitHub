//
//  EditProfileRecruiterService.h
//  RecruitershakeApp
//
//  Created by admin on 18/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface EditProfileRecruiterService : WebServiceClass


+(EditProfileRecruiterService *)sharedInstance;

-(void)editProfileRecruiterUserId:(NSString *)strUserId oldPassword:(NSString *)strOldPwd newPassword:(NSString *)strNewPwd conformPassword:(NSString *)strConPwd firstName:(NSString *)strFirstName lastName:(NSString *)strLastName phoneNumber:(NSString *)strPhoneNumber addressOne:(NSString *)strAddressOne addressTwo:(NSString *)strAddressTwo city:(NSString *)strCity state:(NSString *)strState country:(NSString *)strCountry zipCode:(NSString *)strZipCode fbUrl:(NSString *)strFbUrl twUrl:(NSString *)strTwUrl gPlus:(NSString *)strGplusUrl agencyName:(NSString *)strAgencyName url:(NSString *)strUrl about:(NSString *)strAbout withCompletionHandler:(CompletionHandler)handler;
@end
