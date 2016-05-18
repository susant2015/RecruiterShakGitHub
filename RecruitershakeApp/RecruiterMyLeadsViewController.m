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

@implementation RecruiterMyLeadsViewController


@synthesize firstnames;
@synthesize lastname;
@synthesize email;
@synthesize occuption;
@synthesize qualification;
@synthesize tableView;

@synthesize strFirstName;
@synthesize strLastName;
@synthesize strEmail;
@synthesize strPhone_Number;
@synthesize strEdu_qlification;
@synthesize strzOccuption;


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
        
        
        for(NSDictionary *newValu in statuses)
        {
            
            self.strFirstName=[newValu objectForKey:@"first_name"];
            
            self.strEdu_qlification=[newValu objectForKey:@"last_name"];
            
            self.strPhone_Number=[newValu objectForKey:@"phone_number"];
            self.strEmail=[newValu objectForKey:@"email"];
            
            // [tableView reloadData];
            
            NSLog(@"Name :%@    Quantity :%@    MRP :%@ ",self.strFirstName,self.strEdu_qlification,self.strPhone_Number,self.strEmail);
        }
    }
    
    NSMutableArray *_strFirstname = [NSMutableArray array];
    NSMutableArray *_strLastname = [NSMutableArray array];
    NSMutableArray *_strEmail = [NSMutableArray array];
    NSMutableArray *_strQualification = [NSMutableArray array];
    NSMutableArray *_strPhonenumber = [NSMutableArray array];
    NSMutableArray *_strOccuption = [NSMutableArray array];
    
    
    for (id item in statuses){
        [_strFirstname addObject:[NSString stringWithFormat:@"%@", item[@"first_name"]]];
        [_strLastname addObject:[NSString stringWithFormat:@"%@",item[@"last_name"]]];
        [_strQualification addObject:[NSString stringWithFormat:@"%@", item[@"education"]]];
        [_strEmail addObject:[NSString stringWithFormat:@"%@", item[@"email"]]];
        [_strPhonenumber addObject:[NSString stringWithFormat:@"%@", item[@"phone_number"]]];
        [_strOccuption addObject:[NSString stringWithFormat:@"%@", item[@"occupation"]]];
    }
    
    [tableView reloadData];
    self.firstnames=_strFirstname;
    self.lastname=_strLastname;
    self.qualification=_strQualification;
    self.email=_strEmail;
    self.phone_number=_strPhonenumber;
    self.occuption=_strOccuption;
    // self.strLastName=_strQualification;
    
    
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
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
    NSUInteger row = [indexPath row];
    cell.lblFirstName.text = [self.firstnames objectAtIndex:indexPath.row];
    cell.lblLastName.text=[self.lastname objectAtIndex:indexPath.row];
    cell.lblEdu_Qulf.text=[self.qualification objectAtIndex:indexPath.row];
    cell.lblEmail.text=[self.email objectAtIndex:indexPath.row];
    cell.lblOccupation.text=[self.occuption objectAtIndex:indexPath.row];
    cell.lblPhoneNumber.text=[self.phone_number objectAtIndex:indexPath.row];
    
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





-(IBAction)btnRecruiterEditProfile:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileRecruiter *Edit_P_Recruitervc = [sb instantiateViewControllerWithIdentifier:@"EditProfileRecruiter"];
    [self presentViewController:Edit_P_Recruitervc animated:YES completion:nil];
}
@end
