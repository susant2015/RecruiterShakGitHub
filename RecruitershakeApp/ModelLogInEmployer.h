//
//  ModelUser.h
//  RecruitershakeApp
//
//  Created by admin on 05/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelBaseClass.h"

@interface ModelLogInEmployer : ModelBaseClass<NSCoding>

@property(strong,nonatomic) NSString *strAbout;
@property(strong,nonatomic) NSString *strAddress;
@property(strong,nonatomic) NSString *strPhone_Number;
@property(strong,nonatomic) NSString *strCity;
@property(strong,nonatomic) NSString *strCompany_Name;
@property(strong,nonatomic) NSString *strCountry;
@property(strong,nonatomic) NSString *strEmail;
@property(strong,nonatomic) NSString *strFaceBook_Url;
@property(strong,nonatomic) NSString *strFirst_Name;
@property(strong,nonatomic) NSString *strGPlus_Url;
@property(strong,nonatomic) NSString *strGroup;
@property(strong,nonatomic) NSString *strLast_Name;
@property(strong,nonatomic) NSString *strId;
@property(strong,nonatomic) NSString *strPicture;
@property(strong,nonatomic) NSString *strState;
@property(strong,nonatomic) NSString *strTwitter_Url;
@property(strong,nonatomic) NSString *strUser_Name;
@property(strong,nonatomic) NSString *strZip_Code;
@property(strong,nonatomic) NSString *strPassword;


-(id)initWithDictionary:(NSDictionary *)dict;
@end
