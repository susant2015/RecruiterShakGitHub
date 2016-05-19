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
@property(weak,nonatomic)NSMutableArray *strFirstName;
@property(weak,nonatomic)NSMutableArray *strLastName;
@property(weak,nonatomic)NSMutableArray *strJobId;
@property(weak,nonatomic)NSMutableArray *strApplyDate;

@end
