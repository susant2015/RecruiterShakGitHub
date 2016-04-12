//
//  EmployerJobListViewController.m
//  RecruitershakeApp
//
//  Created by admin on 11/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EmployerJobListViewController.h"
#import "Employerjoblistheadercell.h"
#import "EmployerJobListViewControllerCell.h"
#import "ModelLogInEmployer.h"
#import "EmployerJobListService.h"
#import "ModelEmployerJobList.h"
#import "Constants.h"
#import "AddJobEmployerViewController.h"
@interface EmployerJobListViewController ()
@end

@implementation EmployerJobListViewController{
    
    UITableView *tableView;
     NSMutableArray *mutableArrayJsonData;
   }
@synthesize dist;
@synthesize dists;
- (void)viewDidLoad {
    [super viewDidLoad];
    
   

    
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    
  
   [[EmployerJobListService sharedInstance] employerJobListUserId:modelLogInEmployer.strId withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        
       NSLog(@"The result is:%@",result);
       NSLog(@"Models: %@", [result allKeys]);
       NSLog(@"The first json object is%@", [result objectForKey:@"0"]);
       NSDictionary *addjsonlistfirst=[result objectForKey:@"0"];
       modelEmployerJobList=[[ModelEmployerJobList alloc]initWithDictionary:addjsonlistfirst];
            
       mutableArrayJsonData = [[NSMutableArray alloc] init];
       NSArray * values = [addjsonlistfirst allValues];
       [mutableArrayJsonData addObject:values];
       
       
       
    
        if(isError){
        [[[UIAlertView alloc] initWithTitle:nil message:@"mismatched email" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
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
           
        }
    }];
    
      [super viewWillAppear:animated];
  /*  NSString *post = [[NSString alloc] initWithFormat:@"action=%@&u_id=%@",@"job_listing",modelLogInEmployer.strId];
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu",(unsigned long)[postData length]];
    NSURL *url = [NSURL URLWithString:@"http://website-design-company.in/dev13/services.php"];
    
    NSMutableURLRequest *theRequest = [NSMutableURLRequest requestWithURL:url];
    [theRequest setHTTPMethod:@"POST"];
    [theRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [theRequest setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setHTTPBody:postData];
    NSURLResponse *response;
    NSError *error;
    NSData *urlData = [NSURLConnection sendSynchronousRequest:theRequest returningResponse:&response error:&error];
    
    NSString *str=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    
    arrayJobList=[[NSMutableArray alloc]init];
    [arrayJobList addObject:str];
    NSLog(@"The arrayJobList is :%@ ",arrayJobList);
    if (error) {
          
           }
    NSLog(@"Login response: is %@",str);
    NSMutableArray * arr2 = [[NSMutableArray alloc] initWithArray:arrayJobList copyItems:YES];
    
        NSLog(@"The first index is:%@",[arr2 objectAtIndex:0]);    */
    
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

 /* - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGFloat height=0.0f;
    if (indexPath.row==0) {
        height=120.0f;
    }
    

    return height;
    
}  */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    static NSString *HeaderIdentifier=@"Employerjoblistheadercell";
    
    
    Employerjoblistheadercell *cell = (Employerjoblistheadercell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"Employerjoblistheadercell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.lblEmployerFirstName.text=modelLogInEmployer.strFirst_Name;
    cell.lblEmployerLastName.text=modelLogInEmployer.strLast_Name;
    cell.lblEmployerEmailId.text=modelLogInEmployer.strEmail;
    //[cell.btnAddCell addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
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
         
        static NSString *applicantIndexCellIdentifier=@"EmployerJobListViewControllerCell";
        EmployerJobListViewControllerCell *cell=(EmployerJobListViewControllerCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"EmployerJobListViewControllerCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.lblJobId.text=modelEmployerJobList.strJob_Id;
        cell.lblJobTitle.text=modelEmployerJobList.strTitle;
        cell.lblPosition.text=modelEmployerJobList.strDesignation;
        cell.lblEduqualification.text=modelEmployerJobList.strEducational_Qualification;
        cell.lblSkillRequired.text=modelEmployerJobList.strSkill_required;
        cell.lblPostDate.text=modelEmployerJobList.strCreated;
        NSLog(@"The post job uis:%@",modelEmployerJobList.strCreated);
       // NSLog(@"The mutable arra is:%@",[mutableArrayJsonData objectAtIndex:0]);
        //cell.lblJobId.text
        myCell=cell;
       

    }
    [tableView reloadData];
    return myCell;
   }



@end
