//
//  DashBoardRecruiterViewController.h
//  RecruitershakeApp
//
//  Created by admin on 17/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "BaseViewController.h"

@interface DashBoardRecruiterViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UILabel *lblRecruiterAgencyInfo;
@property (weak, nonatomic) IBOutlet UILabel *lblUrl;
@property (weak, nonatomic) IBOutlet UIImageView *imgRecruiter;
- (IBAction)btnrecruiterEdit;

@property (weak, nonatomic) IBOutlet UIButton *btnAboutRecruiter;
- (IBAction)btnCompanyProfile;
- (IBAction)btnFacebook;
- (IBAction)btnTwitter;
- (IBAction)btnGooglePlus;
@end
