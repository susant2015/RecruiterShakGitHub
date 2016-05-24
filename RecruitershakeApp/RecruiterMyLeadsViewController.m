//
//  RecruiterMyLeadsViewController.m
//  RecruitershakeApp
//
//  Created by admin on 18/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "RecruiterMyLeadsViewController.h"
#import "RecruiterMyLeadsContentCell.h"
#import "RecruiterMyLeadsViewContollerCell.h"
#import "ModelLogInRecruiter.h"
#import "Constants.h"
#import "EditProfileRecruiter.h"
#import "RecruiterMyLeadService.h"
#import "ModelLogInRecruiter.h"
#import "Constants.h"
#import "ModelRecruiterMyLeads.h"
@interface RecruiterMyLeadsViewController ()

@end

@implementation RecruiterMyLeadsViewController{
    
    NSDictionary *statuses;
}


@synthesize firstnames;
@synthesize lastname;
@synthesize email;
@synthesize occuption;
@synthesize qualification;
@synthesize tableView;




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *post = [[NSString alloc] initWithFormat:@"action=%@&rec_id=%@",@"get_leads",modelLogInRecruiter.strRecruiter_Id];
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
    
    NSDictionary *statuses=[jsonResponeDict objectForKey:@"leads"];
    
    
    NSLog(@"SomeStatus :%@",statuses);
    
    if (!statuses)
    {
        //  NSLog(@"Error in Json :%@",error);
    }
    else
    {
        
        
    }
    
    NSMutableArray *strFirstname = [NSMutableArray array];
    NSMutableArray *strLastname = [NSMutableArray array];
    NSMutableArray *strEmail = [NSMutableArray array];
    NSMutableArray *strQualification = [NSMutableArray array];
    NSMutableArray *strPhonenumber = [NSMutableArray array];
    NSMutableArray *strOccuption = [NSMutableArray array];
    
    
    for (id item in statuses){
        [strFirstname addObject:[NSString stringWithFormat:@"%@", item[@"first_name"]]];
        [strLastname addObject:[NSString stringWithFormat:@"%@",item[@"last_name"]]];
        [strQualification addObject:[NSString stringWithFormat:@"%@", item[@"education"]]];
        [strEmail addObject:[NSString stringWithFormat:@"%@", item[@"email"]]];
        [strPhonenumber addObject:[NSString stringWithFormat:@"%@", item[@"phone_number"]]];
        [strOccuption addObject:[NSString stringWithFormat:@"%@", item[@"occupation"]]];
    }
    
    [tableView reloadData];
    self.firstnames=strFirstname;
    self.lastname=strLastname;
    self.qualification=strQualification;
    self.email=strEmail;
    self.phone_number=strPhonenumber;
    self.occuption=strOccuption;
    // self.strLastName=_strQualification;
    
    
    
    
}
 

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.firstnames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
    
    static NSString *applicantIndexCellIdentifier=@"RecruiterMyLeadsViewContollerCell";
    RecruiterMyLeadsViewContollerCell *cell=(RecruiterMyLeadsViewContollerCell *)[self.tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
    if (!cell) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"RecruiterMyLeadsViewContollerCell" owner:self options:nil]objectAtIndex:0];
    }
    
    // cell.lblEmail.text=self.names[indexPath.row];
   
    cell.lblFirstName.text = [self.firstnames objectAtIndex:indexPath.row];
    cell.lblLastName.text=[self.lastname objectAtIndex:indexPath.row];
    cell.lblEdu_Qulf.text=[self.qualification objectAtIndex:indexPath.row];
    cell.lblEmail.text=[self.email objectAtIndex:indexPath.row];
    cell.lblOccupation.text=[self.occuption objectAtIndex:indexPath.row];
    cell.lblPhoneNumber.text=[self.phone_number objectAtIndex:indexPath.row];
    
    myCell=cell;
    
    
    return myCell;
}

/*-(void)viewDidLoad{
    
    [super viewDidLoad];
}
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [[RecruiterMyLeadService  sharedInstance] recruiterMyLeadsId:modelLogInRecruiter.strRecruiter_Id
     withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
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
            
           
            statuses=[result objectForKey:@"leads"];
            
            
            NSLog(@"SomeStatus :%@",statuses);
            
            if (!statuses)
            {
                //  NSLog(@"Error in Json :%@",error);
            }
            else
            {
                
                
               
            }
            
        }
        
    }];
    
     NSLog(@" :%@",statuses);
    
} */

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
    cell.lblCompanyProfile.text=@"My Leads";
    [cell.btnRecruiterEdit addTarget:self action:@selector(btnRecruiterEditProfile:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 191.0f;
}





-(IBAction)btnRecruiterEditProfile:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileRecruiter *Edit_P_Recruitervc = [sb instantiateViewControllerWithIdentifier:@"EditProfileRecruiter"];
    [self presentViewController:Edit_P_Recruitervc animated:YES completion:nil];
}
@end
