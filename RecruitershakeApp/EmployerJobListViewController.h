//
//  EmployerJobListViewController.h
//  RecruitershakeApp
//
//  Created by admin on 11/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployerJobListViewController : UIViewController<UITextViewDelegate,UITableViewDataSource>

    
@property(weak,nonatomic)NSDictionary *dist;
@property(weak,nonatomic)NSDictionary *dists;

@end
