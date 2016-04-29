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

@synthesize applicant_firstname;
@synthesize applicant_lastname;
@synthesize job_Id;
@synthesize apply_Date;

@synthesize mutableArrJobList;

@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   }


-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    
    [[EmployerApplicantListService  sharedInstance] employerApplicantId:modelLogInEmployer.strId  withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        if(isError){
            [[[UIAlertView alloc] initWithTitle:nil message:@"Error" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
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
                modelEmployerApplicantList = [[ModelEmployerApplicantList alloc] initWithDictionary:dicYour];
               
                [self.mutableArrJobList removeObjectAtIndex:i];
                NSLog(@"The clear arr is %@",self.mutableArrJobList);
                [self.mutableArrJobList insertObject:modelEmployerApplicantList atIndex:i];
                
                NSLog(@"THe model arr is :%@",modelEmployerApplicantList.strJobId);
                NSLog(@"==========The arr list is%@",self.mutableArrJobList);
               
                
            }
            
            
            
            NSLog(@"THe model arr is :%@",modelEmployerApplicantList.strJobId);
            
             [tableView reloadData];
            
            //[[[UIAlertView alloc] initWithTitle:nil message:@"Check your mail" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
        }
    }];
    

    
   
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
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
    
}   */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [self.mutableArrJobList count];
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
    UITableViewCell *myCell=nil;
    
  
        
        static NSString *applicantIndexCellIdentifier=@"Employerapplicantlistcell";
        Employerapplicantlistcell *cell=(Employerapplicantlistcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerapplicantlistcell" owner:self options:nil]objectAtIndex:0];
        }
    
    
   
    modelEmployerApplicantList=[self.mutableArrJobList objectAtIndex:indexPath.row];
    NSLog(@"THe joblist name is %@",modelEmployerApplicantList.strJobId);
    cell.lblfitstname.text=modelEmployerApplicantList.strFisrst_Name;
    cell.lblLastName.text=modelEmployerApplicantList.strLast_Name;
    cell.lblJobId.text=modelEmployerApplicantList.strJobId;
    cell.lblApplyDate.text=modelEmployerApplicantList.strApplyDate;
    
   
    
        myCell=cell;
    

    return myCell;
   
}

@end
