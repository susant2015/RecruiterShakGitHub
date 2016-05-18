//
//  EmployerJobListViewController.h
//  RecruitershakeApp
//
//  Created by admin on 17/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "BaseViewController.h"

@interface EmployerJobListViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>
@property(weak,nonatomic) NSMutableArray *serchResult;
@property(weak,nonatomic) NSMutableArray *strjob;
@end
