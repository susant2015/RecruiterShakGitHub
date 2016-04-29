//
//  ModelEmployerApplicantList.h
//  RecruitershakeApp
//
//  Created by admin on 29/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "WebServiceClass.h"

@interface ModelEmployerApplicantList : WebServiceClass


@property(weak,nonatomic) NSString *strFisrst_Name;
@property(weak,nonatomic) NSString *strLast_Name;
@property(weak,nonatomic)  NSString *strJobId;
@property(weak,nonatomic) NSString *strApplyDate;



-(id)initWithDictionary:(NSDictionary *)dict;
@end
