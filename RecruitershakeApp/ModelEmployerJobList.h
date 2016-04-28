//
//  ModelEmployerJobList.h
//  RecruitershakeApp
//
//  Created by admin on 06/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ModelBaseClass.h"

@interface ModelEmployerJobList : ModelBaseClass

@property(weak,nonatomic)NSString *strCreated;
@property(weak,nonatomic)NSString *strDescription;
@property(weak,nonatomic)NSString *strDesignation;
@property(weak,nonatomic)NSString *strEducational_Qualification;
@property(weak,nonatomic)NSString *strId;
@property(weak,nonatomic)NSString *strJob_Id;
@property(weak,nonatomic)NSString *strLocation;
@property(weak,nonatomic)NSString *strSkill_required;
@property(weak,nonatomic)NSString *strTitle;
@property(weak,nonatomic)NSString *strUser_Id;
@property(weak,nonatomic)NSString *strUrl_Key;

-(id)initWithDictionary:(NSDictionary *)dict;
-(NSArray *)initwithArray:(NSArray *)arr;
@end
