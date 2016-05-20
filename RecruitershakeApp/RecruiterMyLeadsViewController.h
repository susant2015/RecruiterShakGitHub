//
//  RecruiterMyLeadsViewController.h
//  RecruitershakeApp
//
//  Created by admin on 18/05/16.
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



@end
