//
//  DashBoardApplicantViewController.h
//  RecruitershakeApp
//
//  Created by admin on 01/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashBoardRecruiterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblRecruiterAgencyInfo;
@property (weak, nonatomic) IBOutlet UILabel *lblUrl;
@property (weak, nonatomic) IBOutlet UIImageView *imgRecruiter;
- (IBAction)btnrecruiterEdit;

@property (weak, nonatomic) IBOutlet UIButton *btnAboutRecruiter;
- (IBAction)btnCompanyProfile;

@end
