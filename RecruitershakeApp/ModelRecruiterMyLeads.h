//
//  ModelRecruiterMyLeads.h
//  RecruitershakeApp
//
//  Created by admin on 26/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelBaseClass.h"

@interface ModelRecruiterMyLeads : ModelBaseClass

@property(weak,nonatomic) NSString *strFisrst_Name;
@property(weak,nonatomic) NSString *strLast_Name;
@property(weak,nonatomic)  NSString *strEmail;
@property(weak,nonatomic) NSString *strOccupation;
@property(weak,nonatomic) NSString *strEducation_Qualification;
@property(weak,nonatomic) NSString *strPhone_Number;


-(id)initWithDictionary:(NSDictionary *)dict;
@end
