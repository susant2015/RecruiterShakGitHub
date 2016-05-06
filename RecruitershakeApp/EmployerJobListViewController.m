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
#import "BaseViewController.h"
@interface EmployerJobListViewController (){
    
    NSMutableArray *mutableArrJobList;
    NSDictionary *dicEmp;
    NSString *strid;
    NSString *strUserid;
    NSString *created;
    NSString *educational_qualifiaction;
    NSString *job_id;
    NSString *location;
    NSString *urlkey;
    NSString *designation;
    NSString *title;
    NSDictionary *dicApplist;
    NSMutableArray *arrDelete;
}
@end

@implementation EmployerJobListViewController{
    
    IBOutlet UITableView *tblEmpJobList;
   
  
}
- (void)viewDidLoad {
    [super viewDidLoad];
     mutableArrJobList = [[NSMutableArray alloc] init];
   strid = @"id";
    strUserid = @"u_id";
    created = @"created";
    educational_qualifiaction=@"educational_qualifiaction";
    job_id=@"job_id";
    location=@"location";
    urlkey=@"url_key";
    designation=@"designation";
    title=@"title";
   arrDelete =[[NSMutableArray alloc] init];
     mutableArrJobList = [[NSMutableArray alloc] init];
    NSString *post = [[NSString alloc] initWithFormat:@"action=%@&u_id=%@",@"job_listing",modelLogInEmployer.strId];
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
    NSLog(@"The jso data is%@",jsonResponeDict);
    for (NSDictionary *dataDict in jsonResponeDict) {
        NSString *id_data = [dataDict objectForKey:@"id"];
        NSString *strUserid_data=[dataDict objectForKey:@"u_id"];
        NSString *created_data=[dataDict objectForKey:@"created"];
        NSString *educational_qualifiaction_data=[dataDict objectForKey:@"educational_qualifiaction"];
        NSString *job_id_data=[dataDict objectForKey:@"job_id"];
        NSString *location_data=[dataDict objectForKey:@"location"];
        NSString *urlkey_data=[dataDict objectForKey:@"url_key"];
        NSString *designation_data=[dataDict objectForKey:@"designation"];
        NSString *title_data=[dataDict objectForKey:@"title"];
        
        
        NSLog(@"id: %@",id_data);
        NSLog(@"firstname: %@",strUserid_data);
        NSLog(@"lastname: %@",created_data);
        
        dicApplist = [NSDictionary dictionaryWithObjectsAndKeys:
                      id_data, strid,strUserid_data,strUserid,created_data,created,educational_qualifiaction_data,educational_qualifiaction,job_id_data,job_id,location_data,location,urlkey_data,urlkey,designation_data,designation,title_data,title,nil];
        [mutableArrJobList addObject:dicApplist];
    }
    
    [tblEmpJobList  reloadData];
   
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
 /*   [[EmployerJobListService sharedInstance] employerJobListUserId:modelLogInEmployer.strId withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        
        if(isError){
            
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                // [self alertStatus:SomethingWrong :nil];
               
                
            }
            
        }
        else{
            NSLog(@"THe result is %@",result);
            mutableArrJobList = [[result objectForKey:@"job"] mutableCopy];
            for (int i=0; i<mutableArrJobList.count; i++) {
                
                NSMutableDictionary *dicEmpJobList = [NSMutableDictionary dictionaryWithDictionary:[mutableArrJobList objectAtIndex:i]];
                 ModelEmployerJobList  *model = [[ModelEmployerJobList alloc] initWithDictionary:dicEmpJobList];
                
                [mutableArrJobList removeObjectAtIndex:i];
               
                [mutableArrJobList insertObject:model atIndex:i];
                
               NSLog(@"THe jobid is :%@",model.strJob_Id);

            }
            
            [tblEmpJobList  reloadData];
            
            
        }
    }];  */
    
   
   
   
}



#pragma tableview

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  
    CGFloat height=0.0f;
    if ([mutableArrJobList count]) {
        height=120.0f;
    }
  

    return height;
  
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    return mutableArrJobList.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    static NSString *HeaderIdentifier=@"Employerjoblistheadercell";
    
    
    Employerjoblistheadercell *cell = (Employerjoblistheadercell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (!cell) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"Employerjoblistheadercell" owner:self options:nil]objectAtIndex:0];
    }
    cell.lblEmployerFirstName.text=modelLogInEmployer.strFirst_Name;
    cell.lblEmployerLastName.text=modelLogInEmployer.strLast_Name;
    cell.lblEmployerEmailId.text=modelLogInEmployer.strEmail;
    [cell.btnAddCell addTarget:self action:@selector(addJobListEmployer) forControlEvents:UIControlEventTouchUpInside];
   
        return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 235.0f;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

        static NSString *applicantIndexCellIdentifier=@"EmployerJobListViewControllerCell";
        EmployerJobListViewControllerCell *cell=(EmployerJobListViewControllerCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"EmployerJobListViewControllerCell" owner:self options:nil] objectAtIndex:0];
        }
    NSDictionary *tmpDict = [mutableArrJobList objectAtIndex:indexPath.row];
    NSLog(@"The temp is%@",tmpDict);
    NSMutableString *idtext;
    idtext = [NSMutableString stringWithFormat:@"%@",
              [tmpDict objectForKeyedSubscript:strid]];
    
    NSMutableString *idusertext;
    idusertext = [NSMutableString stringWithFormat:@"%@ ",
             [tmpDict objectForKey:strUserid]];
    NSMutableString *createdtext;
    createdtext = [NSMutableString stringWithFormat:@"%@",
            [tmpDict objectForKeyedSubscript:created]];
    NSMutableString *edutext;
    edutext = [NSMutableString stringWithFormat:@"%@",
           [tmpDict objectForKeyedSubscript:educational_qualifiaction]];
    NSMutableString *jobidtext;
    jobidtext = [NSMutableString stringWithFormat:@"%@",
            [tmpDict objectForKeyedSubscript:job_id]];
    NSMutableString *locationtext;
    locationtext = [NSMutableString stringWithFormat:@"%@",
                 [tmpDict objectForKeyedSubscript:location]];
    NSMutableString *urlkeytext;
    urlkeytext = [NSMutableString stringWithFormat:@"%@",
                    [tmpDict objectForKeyedSubscript:urlkey]];
    NSMutableString  *designationtext;
    designationtext = [NSMutableString stringWithFormat:@"%@",
                  [tmpDict objectForKeyedSubscript:designation]];
    
    NSMutableString  *titletext;
    titletext = [NSMutableString stringWithFormat:@"%@",
                       [tmpDict objectForKeyedSubscript:title]];
    
    cell.lblJobId.text=jobidtext;
    cell.lblEduqualification.text=edutext;
    cell.lblJobTitle.text=titletext;
    cell.lblPosition.text=designationtext;
    cell.lblPostDate.text=createdtext;
    // cell.lblSkillRequired.text=
    
    [cell.btnEmpDelete addTarget:self action:@selector(btnEmpJobDelete:) forControlEvents:UIControlEventTouchUpInside];
    cell.btnEmpDelete.tag=indexPath.row;
    return cell;
    
    
}

- (void)btnEmpJobDelete:(UIButton *)sender{
   
    NSDictionary *dic;
    dic=[mutableArrJobList objectAtIndex:sender.tag];
    NSLog(@"The delete btn data is%@",dic);
    
}

#pragma addJobList
-(void)addJobListEmployer{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AddJobEmployerViewController *Addjobvc = [sb instantiateViewControllerWithIdentifier:@"AddJobEmployerViewController"];
    
    [self presentViewController:Addjobvc animated:YES completion:nil];
}


@end
