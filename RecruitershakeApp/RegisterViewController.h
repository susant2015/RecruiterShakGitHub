//
//  RegisterViewController.h
//  RecruitershakeApp
//
//  Created by admin on 04/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RegisterViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>

-(id)getSuperviewOfType:(id)superview fromView:(id)myView;
-(void)btnActionSubmit;
-(void)btnActionApplicant:(UIButton*)sender;
-(void)btnActionEmployer:(UIButton*)sender;
-(void)btnActionRecruiter:(UIButton*)sender;
- (void)btnClicked:(id)sender;
-(BOOL)alertChecking;
-(BOOL) NSStringIsValidEmail:(NSString *)checkString;
@end
