//
//  ModelEmploerEdit.h
//  RecruitershakeApp
//
//  Created by admin on 06/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelBaseClass.h"

@interface ModelEmploerEdit : ModelBaseClass

@property(weak,nonatomic) NSString *strTitleEmpJob;
@property(weak,nonatomic) NSString *strEmpEduQual;
@property(weak,nonatomic)  NSString *strEmpLocation;
@property(weak,nonatomic) NSString *strEmpPosition;
@property(weak,nonatomic) NSString *strEmpDesc;
@property(weak,nonatomic) NSString *strEmpSkillRequired;
@property(weak,nonatomic) NSString *strUrlKey;
@property(weak,nonatomic) NSString *strEmpId;



-(id)initWithDictionary:(NSDictionary *)dict;

@end
