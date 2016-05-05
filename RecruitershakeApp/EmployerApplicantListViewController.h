//
//  EmployerApplicantListViewController.h
//  RecruitershakeApp
//
//  Created by admin on 14/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployerApplicantListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>



@property(strong,nonatomic) NSMutableArray *mutableArrJobList;
@property(strong,nonatomic)IBOutlet UITableView *empApplicantListTableView;


@end
