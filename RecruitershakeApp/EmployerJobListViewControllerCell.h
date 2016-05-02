//
//  EmployerjoblistCell.h
//  RecruitershakeApp
//
//  Created by admin on 14/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployerJobListViewControllerCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblJobId;
@property (weak, nonatomic) IBOutlet UILabel *lblJobTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblPosition;
@property (weak, nonatomic) IBOutlet UILabel *lblEduqualification;
@property (weak, nonatomic) IBOutlet UILabel *lblSkillRequired;
@property (weak, nonatomic) IBOutlet UILabel *lblPostDate;
@property (weak, nonatomic) IBOutlet UIButton *btnEmpDelete;

@end
