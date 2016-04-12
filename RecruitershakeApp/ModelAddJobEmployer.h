//
//  ModelAddJobEmployer.h
//  RecruitershakeApp
//
//  Created by admin on 07/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelBaseClass.h"

@interface ModelAddJobEmployer : ModelBaseClass

@property(weak,nonatomic)NSString *strJobTitle;
@property(weak,nonatomic)NSString *strJobDescription;
@property(weak,nonatomic)NSString *strJobDesignation;
@property(weak,nonatomic)NSString *strEducational_Qualification;
@property(weak,nonatomic)NSString *strSkillRequired;
@property(weak,nonatomic)NSString *strLocation;

-(id)initWithDictionary:(NSDictionary *)dict;
@end
