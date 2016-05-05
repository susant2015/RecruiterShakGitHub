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
#import "ModelLogInEmployer.h"
#import "Constants.h"
#import "EmployerApplicantListService.h"
#import "ModelEmployerApplicantList.h"

@interface EmployerApplicantListViewController ()<UITextFieldDelegate>

@end

@implementation EmployerApplicantListViewController



@synthesize mutableArrJobList;

@synthesize empApplicantListTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
  //  NSMutableArray *arr;
    
    
    
    
   }


-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    [[EmployerApplicantListService  sharedInstance] employerApplicantId:modelLogInEmployer.strId  withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        if(isError){
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                //[self alertStatus:SomethingWrong :nil];
                
            }
            
        }
        else{
            
            
            
            self.mutableArrJobList = [[result objectForKey:@"myapplicant"] mutableCopy];
            for (int i=0; i<self.mutableArrJobList.count; i++) {
                
                
                NSMutableDictionary *dicYour = [NSMutableDictionary dictionaryWithDictionary:[self.mutableArrJobList objectAtIndex:i]];
                ModelEmployerApplicantList       *modelEmployerApplicantList = [[ModelEmployerApplicantList alloc] initWithDictionary:dicYour];
                
                [self.mutableArrJobList removeObjectAtIndex:i];
                [self.mutableArrJobList insertObject:modelEmployerApplicantList atIndex:i];
            }
            
            [empApplicantListTableView reloadData];
        }
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGFloat height=0.0f;
    if ([self.mutableArrJobList count]) {
        height=80.0f;
    }
 

    
    return height;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.mutableArrJobList.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    
    static NSString *HeaderIdentifier=@"Employerjoblistheadercell";
    
    
    Employerjoblistheadercell *cell = (Employerjoblistheadercell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (!cell) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerjoblistheadercell" owner:self options:nil]objectAtIndex:0];
    }
    //cell.BtnAddjobListCell.hidden=YES;
    cell.LblTitlebar.text=@"My Applicants";
    cell.btnAddCell.hidden=true;
    cell.lblEmployerFirstName.text=modelLogInEmployer.strFirst_Name;
    cell.lblEmployerLastName.text=modelLogInEmployer.strLast_Name;
    cell.imgEmployer.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInEmployer.strPicture]]];
    cell.lblEmployerEmailId.text=modelLogInEmployer.strEmail;
    
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 235.0f;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        static NSString *applicantIndexCellIdentifier=@"Employerapplicantlistcell";
        Employerapplicantlistcell *cell=(Employerapplicantlistcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerapplicantlistcell" owner:self options:nil]objectAtIndex:0];
        }
    ModelEmployerApplicantList   *modelEmp=[ self.mutableArrJobList objectAtIndex:indexPath.row];
    
    NSLog(@"THe apply date name is %@",modelEmp.strApplyDate);
    NSLog(@"THe joblist lastname is %@",modelEmp.strLast_Name);
    NSLog(@"THe joblist firstname is %@",modelEmp.strFisrst_Name);
    NSLog(@"THe joblist id  is %@",modelEmp.strJobId);
        
    cell.lblfitstname.text=modelEmp.strFisrst_Name;
    cell.lblLastName.text=modelEmp.strLast_Name;
    cell.lblJobId.text=modelEmp.strJobId;
    cell.lblApplyDate.text=modelEmp.strApplyDate;
    
  return cell;
   
}

@end
