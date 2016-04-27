//
//  RecruiterMyLeadsViewController.m
//  RecruitershakeApp
//
//  Created by admin on 15/04/16.
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

@synthesize myLeadsData;
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [[RecruiterMyLeadService sharedInstance] recruiterMyLeadsId: modelLogInRecruiter.strRecruiter_Id withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        
        /*           for (NSDictionary* restaurantParameters in result) {
            modelLogInEmployer = [[ModelLogInEmployer alloc] initWithDictionary:restaurantParameters];
            [mutableArrayJsonData addObject:modelLogInEmployer];
        }
        */
        
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
            NSLog(@"THe result is %@",result);
            
            //[[[UIAlertView alloc] initWithTitle:nil message:@"Check your mail" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            modelRecruiterMyLeads=[[ModelRecruiterMyLeads alloc] initWithDictionary:result];
            myLeadsData=[[NSMutableArray alloc] init];
            NSDictionary *dic=[result objectForKey:@"leads"];
            [myLeadsData addObjectsFromArray:result];
            NSLog(@"The json arra is :%@",dic);
           
            [tableView reloadData];
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
}

-(IBAction)btnRecruiterEditProfile:(UIButton *)sender{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditProfileRecruiter *Edit_P_Recruitervc = [sb instantiateViewControllerWithIdentifier:@"EditProfileRecruiter"];
    [self presentViewController:Edit_P_Recruitervc animated:YES completion:nil];
}
@end
