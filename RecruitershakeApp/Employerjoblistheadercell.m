//
//  Employerjoblistheadercell.m
//  RecruitershakeApp
//
//  Created by admin on 11/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "Employerjoblistheadercell.h"

@implementation Employerjoblistheadercell

@synthesize LblTitlebar=_LblTitlebar;
@synthesize BtnAddjobListCell=_BtnAddjobListCell;
@synthesize btnAddCell=_btnAddCell;

@synthesize imgEmployer;
@synthesize lblEmployerFirstName;
@synthesize lblEmployerLastName;
@synthesize lblEmployerEmailId;
@synthesize btnEditEmployer;
- (void)awakeFromNib {
    // Initialization code
   // self.btnAddCell.hidden=true;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)showAddBtn {
    //self.btnAddCell.hidden=true;
    
}
@end
