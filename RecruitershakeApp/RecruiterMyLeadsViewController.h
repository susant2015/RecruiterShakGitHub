//
//  RecruiterMyLeadsViewController.h
//  RecruitershakeApp
//
//  Created by admin on 15/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecruiterMyLeadsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>



@property (strong, nonatomic) NSArray *firstnames;
@property(strong,nonatomic) NSArray *lastname;
@property(strong,nonatomic) NSArray *email;
@property(strong,nonatomic) NSArray *phone_number;
@property(strong,nonatomic) NSArray *occuption;
@property(strong,nonatomic) NSArray *qualification;

@property(strong,nonatomic) UITableView *tableView;


@property(weak,nonatomic) NSMutableArray *strFirstName;
@property(weak,nonatomic) NSMutableArray *strLastName;
@property(weak,nonatomic) NSMutableArray *strzOccuption;
@property(weak,nonatomic) NSMutableArray *strEmail;
@property(weak,nonatomic) NSMutableArray *strPhone_Number;
@property(weak,nonatomic) NSMutableArray *strEdu_qlification;
@end
