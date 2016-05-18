//
//  EmpJobListViewController.m
//  RecruitershakeApp
//
//  Created by admin on 05/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EmpJobListViewController.h"

#import "Employerjoblistheadercell.h"
#import "Employerapplicantlistcell.h"
#import "ModelLogInEmployer.h"
#import "Constants.h"
#import "EmployerApplicantListService.h"
#import "ModelEmployerApplicantList.h"

@interface EmpJobListViewController (){
    
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

@implementation EmpJobListViewController
{
    
    IBOutlet UITableView *yListApplicant;
}



- (void)viewDidLoad {
    
    // Do any additional setup after loading the view.
   
   [super viewDidLoad];
    
    
    strid = @"id";
    strfirstname = @"first_name";
    strlastname = @"last_name";
    strjobid=@"job_id";
    strapplydate=@"apply_date";
    
    myObject = [[NSMutableArray alloc] init];
    
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
    for (NSDictionary *dataDict in jsonResponeDict) {
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
    [yListApplicant reloadData];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGFloat height=0.0f;
    if ([myObject count]) {
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
/*-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    NSString *post = [[NSString alloc] initWithFormat:@"action=%@&emp_id=%@",@"my_applicant",@"2"];
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
    
    
    for (NSDictionary *bpDictionary in statuses) {
        ModelEmployerApplicantList *currentHotel=[[ModelEmployerApplicantList alloc] initWithId:[bpDictionary objectForKey:@"id"] firstName:[bpDictionary objectForKey:@"first_name"] lastName:[bpDictionary objectForKey:@"last_name"] jobId:[bpDictionary objectForKey:@"job_id"] applyDate:[bpDictionary objectForKey:@"apply_date"]];
        
        [self.objectHolderArray addObject:currentHotel];
    }
    
    [yListApplicant reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-(NSMutableArray *)objectHolderArray{
   // if(!self.objectHolderArray) self.objectHolderArray = [[NSMutableArray alloc]init];
   // return self.objectHolderArray;
//}


#pragma tableviewdata
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGFloat height=0.0f;
    if ([self.objectHolderArray count]) {
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
    
    return self.objectHolderArray.count;
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
    ModelEmployerApplicantList  *currentHotel = [self.objectHolderArray objectAtIndex:indexPath.row];
    
    NSLog(@"THe apply date name is %@",currentHotel.strApplyDate);
    NSLog(@"THe joblist lastname is %@",currentHotel.strLast_Name);
    NSLog(@"THe joblist firstname is %@",currentHotel.strFisrst_Name);
    NSLog(@"THe joblist id  is %@",currentHotel.strJobId);
    
    cell.lblfitstname.text=currentHotel.strFisrst_Name;
    cell.lblLastName.text=currentHotel.strLast_Name;
    cell.lblJobId.text=currentHotel.strJobId;
    cell.lblApplyDate.text=currentHotel.strApplyDate;
    
    return cell;
    
}  */




@end
