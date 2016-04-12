//
//  ModelLogInRecruiter.h
//  RecruitershakeApp
//
//  Created by admin on 06/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelBaseClass.h"

@interface ModelLogInRecruiter : ModelBaseClass<NSCoding>

@property(weak,nonatomic)NSString *strRecruiter_Id;
@property(weak,nonatomic)NSString *strAbout;
@property(weak,nonatomic)NSString *strAddress;
@property(weak,nonatomic)NSString *strAgency_Name;
@property(weak,nonatomic)NSString *strCity;
@property(weak,nonatomic)NSString *strCountry;
@property(weak,nonatomic)NSString *strEmail;
@property(weak,nonatomic)NSString *strFaceBook_Url;
@property(weak,nonatomic)NSString *strFirst_Name;
@property(weak,nonatomic)NSString *strGplus_Url;
@property(weak,nonatomic)NSString *strGroup;
@property(weak,nonatomic)NSString *strLast_Name;
@property(weak,nonatomic)NSString *strMembership_Type;
@property(weak,nonatomic)NSString *strOccuption;
@property(weak,nonatomic)NSString *strPhone_Number;
@property(weak,nonatomic)NSString *strPicture;
@property(weak,nonatomic)NSString *strQuotes;
@property(weak,nonatomic)NSString *strState;
@property(weak,nonatomic)NSString *strSubscription_Date;
@property(weak,nonatomic)NSString *strTwitter_Url;
@property(weak,nonatomic)NSString *strUrl;
@property(weak,nonatomic)NSString *strUser_Name;
@property(weak,nonatomic)NSString *strZip_Code;


-(id)initWithDictionary:(NSDictionary *)dict;
@end
