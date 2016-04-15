//
//  DashBoardPageViewController.h
//  RecruitershakeApp
//
//  Created by admin on 29/02/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashBoardEmployerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *ImgPicture;

@property (weak, nonatomic) IBOutlet UILabel *lblEmpFirstName;
@property (weak, nonatomic) IBOutlet UILabel *lblEmpLastName;
@property (weak, nonatomic) IBOutlet UILabel *lblEmpEmailId;
@property (weak, nonatomic) IBOutlet UIButton *btnAboutEmployer;
- (IBAction)btnEmployerEdit;

@end
