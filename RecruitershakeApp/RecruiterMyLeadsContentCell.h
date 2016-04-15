//
//  RecruiterMyLeadsContentCell.h
//  RecruitershakeApp
//
//  Created by admin on 15/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecruiterMyLeadsContentCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblRecruiterFirstName;
@property (weak, nonatomic) IBOutlet UILabel *lblRecruiterLastName;
@property (weak, nonatomic) IBOutlet UILabel *lblRecruiterEmail;
@property (weak, nonatomic) IBOutlet UIButton *btnRecruiterEdit;

@property (weak, nonatomic) IBOutlet UIImageView *imgRecruiterPicture;

@end
