//
//  TableCellTableViewCell.h
//  RecruitershakeApp
//
//  Created by admin on 04/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterHeaderTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *IMGLOGO;
@property (weak, nonatomic) IBOutlet UIButton *btnApplicant;
@property (weak, nonatomic) IBOutlet UIButton *btnEmployer;
@property (weak, nonatomic) IBOutlet UIButton *btnRecruiter;
@property(weak,nonatomic) IBOutlet UIButton *btnSeleced;
@end
