//
//  Footercell.h
//  RecruitershakeApp
//
//  Created by admin on 07/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterFooterTableViewCell : UITableViewCell


@property (strong, nonatomic) IBOutlet UIButton *btnAction;

@property (weak, nonatomic) IBOutlet UIButton *btnSignIn;
@property (weak, nonatomic) IBOutlet UIButton *btnSignUpWithLinkedIn;
@property (weak, nonatomic) IBOutlet UIButton *btnTerm_And_Condition;
@end
