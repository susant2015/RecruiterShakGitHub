//
//  ApplicantHeaderCell.h
//  RecruitershakeApp
//
//  Created by admin on 08/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ApplicantHeaderCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgApplicantHeader;
@property (weak, nonatomic) IBOutlet UILabel *lblApplicantFirstName;
@property (weak, nonatomic) IBOutlet UILabel *lblApplicantLastName;
@property (weak, nonatomic) IBOutlet UILabel *lblApplicantOccupation;
@property (weak, nonatomic) IBOutlet UILabel *lblApplicantQuates;
@property (weak, nonatomic) IBOutlet UIButton *btnEditApplicant;

@end
