//
//  Employerjoblistheadercell.h
//  RecruitershakeApp
//
//  Created by admin on 11/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Employerjoblistheadercell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *LblTitlebar;
@property (weak, nonatomic) IBOutlet UILabel *BtnAddjobListCell;
@property (weak, nonatomic) IBOutlet UIButton *btnAddCell;
@property (weak, nonatomic) IBOutlet UILabel *lblEmployerFirstName;
@property (weak, nonatomic) IBOutlet UILabel *lblEmployerLastName;
@property (weak, nonatomic) IBOutlet UILabel *lblEmployerEmailId;
- (IBAction)showAddBtn;

@end
