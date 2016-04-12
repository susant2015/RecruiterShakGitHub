//
//  ModelRegister.h
//  RecruitershakeApp
//
//  Created by admin on 08/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelBaseClass.h"

@interface ModelRegister : ModelBaseClass
@property(weak,nonatomic) NSString *strFisrst_Name;
@property(weak,nonatomic) NSString *strLast_Name;
@property(weak,nonatomic)  NSString *strEmail;
@property(weak,nonatomic) NSString *strUser_Name;
@property(weak,nonatomic) NSString *strPassword;
@property(weak,nonatomic) NSString *strPhone_Number;
@property(weak,nonatomic)  NSString *strAddress_Line1;
@property(weak,nonatomic)  NSString *strAddress_Line2;
@property(weak,nonatomic)  NSString *strCity;
@property(weak,nonatomic)  NSString *strState;
@property(weak,nonatomic)  NSString *strCountry;
@property(weak,nonatomic) NSString *strZip_Code;
@property(weak,nonatomic) NSString *strOccupation;


-(id)initWithDictionary:(NSDictionary *)dict;
@end
