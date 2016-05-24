//
//  ApplicantProfileViewController.m
//  RecruitershakeApp
//
//  Created by admin on 08/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "DashBoardApplicantProfileViewController.h"
#import "EditProfileApplicantViewController.h"
#import "ApplicantHeaderCell.h"
#import "ApplicantDetailsCell.h"
#import "ApplicantIndexCell.h"
#import "EducationBackgroundCell.h"
#import "WorkExprienceDegreeCell.h"
#import "WorkExprienceDegreeSchoolCell.h"
#import "DescriptionCell.h"
#import "LoadMoreCell.h"
#import "Constants.h"
#import "ModelLogInApplicant.h"
#import "ApplicantEduBackTableViewCell.h"
#import "ApplicantContentEdueTableViewCell.h"
#import "ApplicantWorkExpTableViewCell.h"
@interface DashBoardApplicantProfileViewController ()

@end

@implementation DashBoardApplicantProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 7;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) {
        return 1;
    }
    else if (section==1) {
        return 1;
    }
    else if (section==2) {
        return 1;
    }
    else if (section==3) {
        return 1;
    }
    else if (section==4) {
        return 1;
    }
    else if (section==5) {
        return 1;
    }
    else
    return 1;
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    CGFloat height=0.0f;
    if (indexPath.section==0) {
        height=75.0f;
    }
    else  if (indexPath.section==1)
    {
        height=97.0f;
    }
    else if (indexPath.section==2)
    {
        height=30.0f;
    }
    else if (indexPath.section==3)
    {
        height=60.0f;
    }
    else if (indexPath.section==4)
    {
        height=40.0f;
    }
    else if (indexPath.section==5)
    {
        height=60.0f;
    }
    else if (indexPath.section==6)
    {
        height=82.0f;
    }
    
       return height;
}


/*- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    static NSString *HeaderIdentifier=@"ApplicantHeaderCell";
    
    
    ApplicantHeaderCell *cell = (ApplicantHeaderCell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ApplicantHeaderCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.imgApplicantHeader.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInApplicant.strPicture]]];
    cell.lblApplicantFirstName.text=modelLogInApplicant.strFirst_Name;
    cell.lblApplicantLastName.text=modelLogInApplicant.strLast_Name;
    cell.lblApplicantOccupation.text=modelLogInApplicant.strOccuption;
    cell.lblApplicantQuates.text=modelLogInApplicant.strQuotes;
    [cell.btnEditApplicant addTarget:self action:@selector(btnEditApplicants:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
    
} */
-(IBAction)btnEditApplicants:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileApplicantViewController *editpapplicantvc = [sb instantiateViewControllerWithIdentifier:@"EditProfileApplicantViewController"];
    [self presentViewController:editpapplicantvc animated:YES completion:nil];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
    if (indexPath.section==0) {
       
        static NSString *applicantIndexCellIdentifier=@"ApplicantDetailsCell";
        ApplicantIndexCell *cell=(ApplicantIndexCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantDetailsCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
    }
   else if (indexPath.section==1)
    {
        static NSString *applicantIndexCellIdentifier2=@"ApplicantIndexCell";
        ApplicantIndexCell *cell=(ApplicantIndexCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier2];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantIndexCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.section==2)
    {
        static NSString *applicantIndexCellIdentifier3=@"ApplicantEduBackTableViewCell";
        ApplicantEduBackTableViewCell *cell=(ApplicantEduBackTableViewCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier3];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantEduBackTableViewCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.section==3)
    {
        static NSString *applicantIndexCellIdentifier4=@"ApplicantContentEdueTableViewCell";
        ApplicantContentEdueTableViewCell *cell=(ApplicantContentEdueTableViewCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier4];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantContentEdueTableViewCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.section==4)
    {
        static NSString *applicantIndexCellIdentifier5=@"ApplicantWorkExpTableViewCell";
        ApplicantWorkExpTableViewCell *cell=(ApplicantWorkExpTableViewCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier5];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantWorkExpTableViewCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.section==5)
    {
        static NSString *applicantIndexCellIdentifier4=@"ApplicantContentEdueTableViewCell";
        ApplicantContentEdueTableViewCell *cell=(ApplicantContentEdueTableViewCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier4];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantContentEdueTableViewCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.section==6)
    {
        static NSString *applicantIndexCellIdentifier4=@"LoadMoreCell";
        LoadMoreCell *cell=(LoadMoreCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier4];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"LoadMoreCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    return myCell;
}

@end
