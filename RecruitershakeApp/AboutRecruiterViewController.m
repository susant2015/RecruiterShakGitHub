//
//  AboutRecruiterViewController.m
//  RecruitershakeApp
//
//  Created by admin on 18/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "AboutRecruiterViewController.h"
#import "AboutContentCell.h"
#import "RecruiterMyLeadsContentCell.h"
#import "Constants.h"
#import "ModelLogInRecruiter.h"
#import "EditProfileRecruiter.h"
@implementation AboutRecruiterViewController

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGFloat height=0.0f;
    if (indexPath.row==0) {
        height=370.0f;
    }
    
    
    return height;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 1;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    static NSString *HeaderIdentifier=@"RecruiterMyLeadsContentCell";
    
    
    RecruiterMyLeadsContentCell *cell = (RecruiterMyLeadsContentCell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"RecruiterMyLeadsContentCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
    }
    cell.lblRecruiterFirstName.text=modelLogInRecruiter.strFirst_Name;
    cell.lblRecruiterLastName.text=modelLogInRecruiter.strLast_Name;
    cell.lblRecruiterEmail.text=modelLogInRecruiter.strEmail;
    cell.imgRecruiterPicture.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInRecruiter.strPicture]]];
    [cell.btnRecruiterEdit addTarget:self action:@selector(btnRecruiterEditProfile:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 191.0f;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
    
    if (indexPath.row==0) {
        
        static NSString *applicantIndexCellIdentifier=@"AboutContentCell";
        AboutContentCell *cell=(AboutContentCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"AboutContentCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle=UITableViewCellSelectionStyleNone;
        cell.lblAboutContent.textAlignment=NSTextAlignmentLeft;
        cell.lblAboutContent.text=modelLogInRecruiter.strAbout;
        myCell=cell;
        
    }
    
    return myCell;
}
-(IBAction)btnRecruiterEditProfile:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileRecruiter *Edit_P_Recruitervc = [sb instantiateViewControllerWithIdentifier:@"EditProfileRecruiter"];
    [self presentViewController:Edit_P_Recruitervc animated:YES completion:nil];
}

@end
