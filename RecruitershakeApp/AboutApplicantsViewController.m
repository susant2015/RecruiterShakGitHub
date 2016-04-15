//
//  AboutApplicantsViewController.m
//  RecruitershakeApp
//
//  Created by admin on 14/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "AboutApplicantsViewController.h"
#import "Employerjoblistheadercell.h"
#import "AboutContentCell.h"
#import "Constants.h"
#import "ModelLogInEmployer.h"
#import "EditProfileEmployerViewController.h"
@interface AboutApplicantsViewController ()

@end

@implementation AboutApplicantsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    }

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
    static NSString *HeaderIdentifier=@"Employerjoblistheadercell";
    
    
    Employerjoblistheadercell *cell = (Employerjoblistheadercell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"Employerjoblistheadercell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        cell.btnAddCell.hidden=true;
        cell.BtnAddjobListCell.text=@"About";
        cell.lblEmployerFirstName.text=modelLogInEmployer.strFirst_Name;
        cell.lblEmployerLastName.text=modelLogInEmployer.strLast_Name;
        cell.lblEmployerEmailId.text=modelLogInEmployer.strEmail;
        cell.imgEmployer.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInEmployer.strPicture]]];
        [cell.btnEditEmployer addTarget:self action:@selector(addJobListEmployer:) forControlEvents:UIControlEventTouchUpInside];
    }
    
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
        
        static NSString *applicantIndexCellIdentifier=@"AboutContentCell";
        AboutContentCell *cell=(AboutContentCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"AboutContentCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.lblAboutContent.text=modelLogInEmployer.strAbout;
        myCell=cell;
        
    }
    return myCell;
}

-(IBAction)addJobListEmployer:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileEmployerViewController *Edit_P_Employervc = [sb instantiateViewControllerWithIdentifier:@"EditProfileEmployerViewController"];
    [self presentViewController:Edit_P_Employervc animated:YES completion:nil];
}
@end
