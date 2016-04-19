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
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 200.0f;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    CGFloat height=0.0f;
    if (indexPath.row==0) {
        height=75.0f;
    }
    else if (indexPath.row==1)
    {
        height=97.0f;
    }
    else if (indexPath.row==2)
    {
        height=160.0f;
    }
    else if (indexPath.row==3)
    {
        height=89.0f;
    }
    else if (indexPath.row==4)
    {
        height=60.0f;
    }
    else if (indexPath.row==5)
    {
        height=130.0f;
    }
    else if (indexPath.row==6)
    {
        height=82.0f;
    }
       return height;
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    static NSString *HeaderIdentifier=@"ApplicantHeaderCell";
    
    
    ApplicantHeaderCell *cell = (ApplicantHeaderCell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ApplicantHeaderCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    //cell.imgApplicantHeader.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInApplicant.strPicture]]];
    cell.lblApplicantFirstName.text=modelLogInApplicant.strFirst_Name;
    cell.lblApplicantLastName.text=modelLogInApplicant.strLast_Name;
    cell.lblApplicantOccupation.text=modelLogInApplicant.strOccuption;
    cell.lblApplicantQuates.text=modelLogInApplicant.strQuotes;
    [cell.btnEditApplicant addTarget:self action:@selector(addJobListApplicant:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
    
}
-(IBAction)addJobListApplicant:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileApplicantViewController *editpapplicantvc = [sb instantiateViewControllerWithIdentifier:@"EditProfileApplicantViewController"];
    [self presentViewController:editpapplicantvc animated:YES completion:nil];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
    if (indexPath.row==0) {
       
        static NSString *applicantIndexCellIdentifier=@"ApplicantDetailsCell";
        ApplicantIndexCell *cell=(ApplicantIndexCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantDetailsCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
    }
    else if (indexPath.row==1)
    {
        static NSString *applicantIndexCellIdentifier2=@"ApplicantIndexCell";
        ApplicantIndexCell *cell=(ApplicantIndexCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier2];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantIndexCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.row==2)
    {
        static NSString *applicantIndexCellIdentifier3=@"EducationBackgroundCell";
        ApplicantIndexCell *cell=(ApplicantIndexCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier3];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"EducationBackgroundCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.row==3)
    {
        static NSString *applicantIndexCellIdentifier4=@"WorkExprienceDegreeCell";
        WorkExprienceDegreeCell *cell=(WorkExprienceDegreeCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier4];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"WorkExprienceDegreeCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.row==4)
    {
        static NSString *applicantIndexCellIdentifier5=@"WorkExprienceDegreeSchoolCell";
        WorkExprienceDegreeCell *cell=(WorkExprienceDegreeCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier5];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"WorkExprienceDegreeSchoolCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.row==5)
    {
        static NSString *applicantIndexCellIdentifier6=@"DescriptionCell";
        DescriptionCell *cell=(DescriptionCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier6];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"DescriptionCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    else if (indexPath.row==6)
    {
        static NSString *applicantIndexCellIdentifier7=@"LoadMoreCell";
        LoadMoreCell *cell=(LoadMoreCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier7];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"LoadMoreCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
        
    }
    



  
    return myCell;
}

@end
