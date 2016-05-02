//
//  EmployerjoblistCell.m
//  RecruitershakeApp
//
//  Created by admin on 14/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EmployerJobListViewControllerCell.h"

@implementation EmployerJobListViewControllerCell

@synthesize lblJobId;
@synthesize lblJobTitle;
@synthesize lblPosition;
@synthesize lblEduqualification;
@synthesize lblSkillRequired;
@synthesize lblPostDate;

@synthesize btnEmpDelete;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
