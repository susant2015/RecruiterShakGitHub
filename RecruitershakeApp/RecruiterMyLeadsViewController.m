//
//  RecruiterMyLeadsViewController.m
//  RecruitershakeApp
//
//  Created by admin on 15/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//
#define JSON_FILE_URL @"http://website-design-company.in/dev13/services.php?action=get_leads&rec_id=3"
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

@implementation RecruiterMyLeadsViewController

@synthesize myLeadsData;
@synthesize names;
@synthesize tableView;

@synthesize strFirstName;
@synthesize strLastName;
@synthesize strEmail;
@synthesize strPhone_Number;
@synthesize strEdu_qlification;
@synthesize strzOccuption;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Download JSON
    NSData *JSONData = [NSData dataWithContentsOfURL:[NSURL URLWithString:JSON_FILE_URL]];
    // Parse JSON
    NSDictionary *jsonResult = [NSJSONSerialization JSONObjectWithData:JSONData options:kNilOptions error:nil];
    
    NSLog(@"The arr is %@",jsonResult);
    
    NSDictionary *statuses=[jsonResult objectForKey:@"leads"];
    
    
    NSLog(@"SomeStatus :%@",statuses);
    
    if (!statuses)
    {
      //  NSLog(@"Error in Json :%@",error);
    }
    else
    {
        
        
        for(NSDictionary *newValu in statuses)
        {
            
            self.strFirstName=[newValu objectForKey:@"first_name"];
            
            self.strEdu_qlification=[newValu objectForKey:@"last_name"];
            
            self.strPhone_Number=[newValu objectForKey:@"phone_number"];
            self.strEmail=[newValu objectForKey:@"email"];
            
            [tableView reloadData];
            
            NSLog(@"Name :%@    Quantity :%@    MRP :%@ ",self.strFirstName,self.strEdu_qlification,self.strPhone_Number,self.strEmail);
        }
    }
    
    NSMutableArray *_strFirstname = [NSMutableArray array];
    NSMutableArray *_strQualification = [NSMutableArray array];
     NSMutableArray *_strEmail = [NSMutableArray array];
     NSMutableArray *_strPhonenumber = [NSMutableArray array];
    
    for (NSDictionary *dictionary in statuses)
    {
        self.myLeadsData= [dictionary objectForKey:@"leads"];
    }
    for (NSDictionary *dic in self.myLeadsData) {
        NSLog(@"THe first name is:%@",[dic objectForKey:@"first_name"]);
    }
    for (id item in statuses)
        [_strFirstname addObject:[NSString stringWithFormat:@"%@", item[@"first_name"]]];
        //[_strQualification addObject:[NSString stringWithFormat:@"%@",item[@"last_name"]]];
       // [_strQualification addObject:[NSString stringWithFormat:@"%@", item[@"last_name"]]];
       // [_strEmail addObject:[NSString stringWithFormat:@"%@", item[@"email"]]];
       // [_strPhonenumber addObject:[NSString stringWithFormat:@"%@", item[@"phone_number"]]];
        
    [tableView reloadData];
    self.names=_strFirstname;
    
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.names count];
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
    
     cell.lblName.text = [self.names objectAtIndex:indexPath.row];
    // cell.lblEmail.text=[self.strEmail objectAtIndex:indexPath.row];
        myCell=cell;
        
    
    return myCell;
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
    cell.lblCompanyProfile.text=@"My Leads";
    [cell.btnRecruiterEdit addTarget:self action:@selector(btnRecruiterEditProfile:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 191.0f;
}

/* -(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [[RecruiterMyLeadService sharedInstance] recruiterMyLeadsId: modelLogInRecruiter.strRecruiter_Id withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        
                  for (NSDictionary* restaurantParameters in result) {
            modelLogInEmployer = [[ModelLogInEmployer alloc] initWithDictionary:restaurantParameters];
            [mutableArrayJsonData addObject:modelLogInEmployer];
        }
 
        
       if(isError){
           
            [[[UIAlertView alloc] initWithTitle:nil message:@"Error" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                // [self alertStatus:SomethingWrong :nil];
                
            }
            
        }
        else{
           
        }
    }];
    
    
}  */

/*- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGFloat height=0.0f;
    if (indexPath.row==[myLeadsData count]) {
        height=131.0f;
    }
    
    
    return height;
}   
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
     return [self.myLeadsData count];
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
    cell.lblCompanyProfile.text=@"My Leads";
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
    
    if (indexPath.row==[myLeadsData count]) {
        
        static NSString *applicantIndexCellIdentifier=@"RecruiterMyLeadsViewContollerCell";
        RecruiterMyLeadsViewContollerCell *cell=(RecruiterMyLeadsViewContollerCell *)[self.tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"RecruiterMyLeadsViewContollerCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.lblEmail.text=modelRecruiterMyLeads.strEmail;
        NSLog(@"THe email is %@",modelRecruiterMyLeads.strEmail);
        myCell=cell;
        
    }
    //[tableView reloadData];
    
    return myCell;
}  */



-(IBAction)btnRecruiterEditProfile:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileRecruiter *Edit_P_Recruitervc = [sb instantiateViewControllerWithIdentifier:@"EditProfileRecruiter"];
    [self presentViewController:Edit_P_Recruitervc animated:YES completion:nil];
}
@end
