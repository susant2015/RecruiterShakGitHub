//
//  RecruiterMyLeadsViewController.h
//  RecruitershakeApp
//
//  Created by admin on 15/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecruiterMyLeadsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>


@property(strong,nonatomic) NSMutableArray *myLeadsData;
@property(strong,nonatomic) UITableView *tableView;
@end
