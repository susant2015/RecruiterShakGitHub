//
//  EmployerApplicantListViewController.h
//  RecruitershakeApp
//
//  Created by admin on 14/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployerApplicantListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic) NSArray *applicant_firstname;
@property(strong,nonatomic) NSArray *applicant_lastname;
@property(strong,nonatomic) NSArray *job_Id;
@property(strong,nonatomic) NSArray *apply_Date;

@property(strong,nonatomic) NSMutableArray *mutableArrJobList;
@property(weak,nonatomic)IBOutlet UITableView *tableView;

@property(strong,nonatomic) NSMutableArray *list;
@end
