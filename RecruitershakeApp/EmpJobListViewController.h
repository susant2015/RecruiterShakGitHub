//
//  EmpJobListViewController.h
//  RecruitershakeApp
//
//  Created by admin on 05/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ModelEmployerApplicantList.h"


@interface EmpJobListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    
   
}
@property(strong,nonatomic)NSArray *strFirstName;
@property(strong,nonatomic)NSArray *strLastName;
@property(strong,nonatomic)NSArray *strJobId;
@property(strong,nonatomic)NSArray *strApplyDate;

@end
