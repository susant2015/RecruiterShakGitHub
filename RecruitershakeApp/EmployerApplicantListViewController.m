//
//  EmployerApplicantListViewController.m
//  RecruitershakeApp
//
//  Created by admin on 14/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EmployerApplicantListViewController.h"
#import "Employerjoblistheadercell.h"
#import "Employerapplicantlistcell.h"
@interface EmployerApplicantListViewController ()<UITextFieldDelegate>

@end

@implementation EmployerApplicantListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGFloat height=0.0f;
    if (indexPath.row==0) {
        height=80.0f;
    }
    else if (indexPath.row==1)
    {
        height=80.0f;
    }
    else if (indexPath.row==2)
    {
        height=80.0f;
    }
    else if (indexPath.row==3)
    {
        height=80.0f;
    }
    else if (indexPath.row==4)
    {
        height=80.0f;
    }

    
    return height;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 5;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    
    static NSString *HeaderIdentifier=@"Employerjoblistheadercell";
    
    
    Employerjoblistheadercell *cell = (Employerjoblistheadercell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"Employerjoblistheadercell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    //cell.BtnAddjobListCell.hidden=YES;
    cell.LblTitlebar.text=@"My Applicants";
    cell.btnAddCell.hidden=true;
    
    
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 235.0f;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
    
    if (indexPath.row==0) {
        
        static NSString *applicantIndexCellIdentifier=@"Employerapplicantlistcell";
        Employerapplicantlistcell *cell=(Employerapplicantlistcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerapplicantlistcell" owner:self options:nil]objectAtIndex:0];
        }
        
        myCell=cell;
    
    }
    if (indexPath.row==1) {
        
        static NSString *applicantIndexCellIdentifier=@"Employerapplicantlistcell";
        Employerapplicantlistcell *cell=(Employerapplicantlistcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerapplicantlistcell" owner:self options:nil]objectAtIndex:0];
        }
        
        myCell=cell;
    }
    if (indexPath.row==2) {
        
        static NSString *applicantIndexCellIdentifier=@"Employerapplicantlistcell";
        Employerapplicantlistcell *cell=(Employerapplicantlistcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerapplicantlistcell" owner:self options:nil]objectAtIndex:0];
        }
        
        myCell=cell;
    }
    if (indexPath.row==3) {
        
        static NSString *applicantIndexCellIdentifier=@"Employerapplicantlistcell";
        Employerapplicantlistcell *cell=(Employerapplicantlistcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerapplicantlistcell" owner:self options:nil]objectAtIndex:0];
        }
        
        myCell=cell;
    }
    if (indexPath.row==4) {
        
        static NSString *applicantIndexCellIdentifier=@"Employerapplicantlistcell";
        Employerapplicantlistcell *cell=(Employerapplicantlistcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerapplicantlistcell" owner:self options:nil]objectAtIndex:0];
        }
        
        myCell=cell;
    }

    
    return myCell;
    
}

@end
