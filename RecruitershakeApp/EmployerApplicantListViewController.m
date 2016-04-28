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
@interface EmployerApplicantListViewController ()<UITextFieldDelegate>

@end

@implementation EmployerApplicantListViewController

@synthesize applicant_firstname;
@synthesize applicant_lastname;
@synthesize job_Id;
@synthesize apply_Date;

@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    NSString *post = [[NSString alloc] initWithFormat:@"action=%@&emp_id=%@",@"my_applicant",modelLogInEmployer.strId];
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
    NSURL *url = [NSURL URLWithString:@"http://website-design-company.in/dev13/services.php"];
    NSMutableURLRequest *theRequest = [NSMutableURLRequest requestWithURL:url];
    [theRequest setHTTPMethod:@"POST"];
    [theRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [theRequest setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setHTTPBody:postData];
    NSURLResponse *response;
    NSError *error;
    NSData *urlData = [NSURLConnection sendSynchronousRequest:theRequest returningResponse:&response error:&error];
    NSDictionary   *jsonResponeDict=[NSJSONSerialization JSONObjectWithData:urlData options:0 error:&error];
    // NSString *str=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    //NSLog(@"Login response: is %@",str); //getting response
    NSLog(@"The jso data is%@",jsonResponeDict);
    
    NSDictionary *statuses=[jsonResponeDict objectForKey:@"myapplicant"];
    
    
    NSLog(@"SomeStatus :%@",statuses);
    
    if (!statuses)
    {
        //  NSLog(@"Error in Json :%@",error);
    }
    
    
    
    NSMutableArray *_strFirstname = [NSMutableArray array];
    NSMutableArray *_strLastname = [NSMutableArray array];
    NSMutableArray *_strJobId = [NSMutableArray array];
    NSMutableArray *_strApplyDate = [NSMutableArray array];
   
    
    
    for (id item in statuses){
        [_strFirstname addObject:[NSString stringWithFormat:@"%@", item[@"first_name"]]];
        [_strLastname addObject:[NSString stringWithFormat:@"%@", item[@"last_name"]]];
        [_strJobId addObject:[NSString stringWithFormat:@"%@", item[@"job_id"]]];
        [_strApplyDate addObject:[NSString stringWithFormat:@"%@", item[@"apply_date"]]];
        
    }
    
    [tableView reloadData];
    self.applicant_firstname=_strFirstname;
    self.applicant_lastname=_strLastname;
    self.job_Id=_strJobId;
    self.apply_Date=_strApplyDate;
    
    // self.strLastName=_strQualification;  */
    
    
   }


-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
/*    [[EmployerApplicantListService  sharedInstance] employerApplicantId:modelLogInEmployer.strId  withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
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
            
            
            NSLog(@"The list is:%@",result);
            
             NSDictionary *statuses=[result objectForKey:@"myapplicant"];
            
            NSMutableArray *_strApplicantName = [NSMutableArray array];
            NSMutableArray *_strJobId = [NSMutableArray array];
            NSMutableArray *_strAppliDate = [NSMutableArray array];
            
            for (id item in statuses){
                [_strApplicantName addObject:[NSString stringWithFormat:@"%@", item[@"first_name"]]];
                 NSLog(@"THe firts name is%@",_strApplicantName);
                
            }
            
            [tableView reloadData];
            self.applicant_Name=_strApplicantName;
           
            
            //[[[UIAlertView alloc] initWithTitle:nil message:@"Check your mail" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
        }
    }];   */
    
   
    
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
    
    return [self.applicant_firstname count];
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
    
    cell.lblfitstname.text=[self.applicant_firstname objectAtIndex:indexPath.row];
    cell.lblLastName.text=[self.applicant_lastname objectAtIndex:indexPath.row];
    cell.lblJobId.text=[self.job_Id objectAtIndex:indexPath.row];
    cell.lblApplyDate.text=[self.apply_Date objectAtIndex:indexPath.row];
      
        myCell=cell;
    

    return myCell;
    
}

@end
