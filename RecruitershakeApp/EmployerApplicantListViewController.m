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
#import "EditProfileEmployerViewController.h"

@interface EmployerApplicantListViewController ()<UITextFieldDelegate>{
    
    NSMutableArray *myObject;
    // A dictionary object
    NSDictionary *dictionary;
    // Define keys
    NSString *strid;
    NSString *strfirstname;
    NSString *strlastname;
    NSString *strjobid;
    NSString *strapplydate;
}

@end

@implementation EmployerApplicantListViewController



@synthesize mutableArrJobList;

@synthesize empApplicantListTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    strid = @"id";
    strfirstname = @"first_name";
    strlastname = @"last_name";
    strjobid=@"job_id";
    strapplydate=@"apply_date";
    myObject=[[NSMutableArray alloc] init];
    
    
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
            
            for (NSDictionary *dataDict in result) {
                NSString *id_data = [dataDict objectForKey:@"id"];
                NSString *strfirstname_data = [dataDict objectForKey:@"first_name"];
                NSString *last_name_data = [dataDict objectForKey:@"last_name"];
                NSString *strjobid_data = [dataDict objectForKey:@"job_id"];
                NSString *strapplydate_data = [dataDict objectForKey:@"apply_date"];
                
                NSLog(@"id: %@",id_data);
                NSLog(@"firstname: %@",strfirstname_data);
                NSLog(@"lastname: %@",last_name_data);
                
                dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                              id_data, strid,
                              strfirstname_data, strfirstname,
                              last_name_data,strlastname,strjobid_data,strjobid,strapplydate_data,strapplydate,
                              nil];
                [myObject addObject:dictionary];
            }
            
            [empApplicantListTableView reloadData];
        }
    }];
   }


-(void)viewDidAppear:(BOOL)animated{
    
    
    
   
    [super viewDidAppear:animated];
    
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
    
    return myObject.count;
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
     [cell.btnEditEmployer addTarget:self action:@selector(btnEmployerEditProfile:) forControlEvents:UIControlEventTouchUpInside];
    
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
    NSDictionary *tmpDict = [myObject objectAtIndex:indexPath.row];
    
    NSMutableString *idtext;
    idtext = [NSMutableString stringWithFormat:@"%@",
              [tmpDict objectForKeyedSubscript:strid]];
    
    NSMutableString *first;
    first = [NSMutableString stringWithFormat:@"%@ ",
             [tmpDict objectForKey:strfirstname]];
    NSMutableString *last;
    last = [NSMutableString stringWithFormat:@"%@",
            [tmpDict objectForKeyedSubscript:strlastname]];
    NSMutableString *job;
    job = [NSMutableString stringWithFormat:@"%@",
           [tmpDict objectForKeyedSubscript:strjobid]];
    NSMutableString *date;
    date = [NSMutableString stringWithFormat:@"%@",
            [tmpDict objectForKeyedSubscript:strapplydate]];
    
    NSLog(@"The first name is %@",idtext);
    
    cell.lblfitstname.text=first;
    cell.lblLastName.text=last;
    cell.lblJobId.text=job;
    cell.lblApplyDate.text=date;
    
    return cell;
    
}

-(IBAction)btnEmployerEditProfile:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileEmployerViewController *Edit_P_Empvc = [sb instantiateViewControllerWithIdentifier:@"EditProfileEmployerViewController"];
    [self presentViewController:Edit_P_Empvc animated:YES completion:nil];
}
@end
