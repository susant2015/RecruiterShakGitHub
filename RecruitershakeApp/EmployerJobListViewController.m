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
    
  
  
   }

@synthesize mutableArrJobList;
@synthesize empJobListtableView;


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    
      [super viewWillAppear:animated];
    [[EmployerJobListService sharedInstance] employerJobListUserId:modelLogInEmployer.strId withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        
        
        
        
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
            
            
            self.mutableArrJobList = [[result objectForKey:@"job"] mutableCopy];
            for (int i=0; i<self.mutableArrJobList.count; i++) {
                
                NSMutableDictionary *dicYour = [NSMutableDictionary dictionaryWithDictionary:[self.mutableArrJobList objectAtIndex:i]];
        modelEmployerJobList = [[ModelEmployerJobList alloc] initWithDictionary:dicYour];
                
                [self.mutableArrJobList removeObjectAtIndex:i];
               
                [self.mutableArrJobList insertObject:modelEmployerJobList atIndex:i];
                
               NSLog(@"THe jobid is :%@",modelEmployerJobList.strJob_Id);
              //  NSLog(@"==========The arr list is%@",self.mutableArrJobList);
               
                
            }
            
            
            
           // NSLog(@"THe model arr is :%@",modelEmployerJobList.strJob_Id);
            
            [empJobListtableView  reloadData];
            
            
        }
    }];
   
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  
    CGFloat height=0.0f;
    if ([self.mutableArrJobList objectAtIndex:indexPath.row]) {
        height=120.0f;
    }
  

    return height;
  
}
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
    UITableViewCell *myCell=nil;
   
         
        static NSString *applicantIndexCellIdentifier=@"EmployerJobListViewControllerCell";
        EmployerJobListViewControllerCell *cell=(EmployerJobListViewControllerCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"EmployerJobListViewControllerCell" owner:self options:nil]objectAtIndex:0];
        }
   
       modelEmployerJobList=[self.mutableArrJobList objectAtIndex:indexPath.row];
    
          cell.lblJobId.text=@"HI";
    NSLog(@"THe jobid is%@",modelEmployerJobList.strJob_Id);
    //NSLog(@"THe jobid is%@",modelEmp.strCreated);
    //NSLog(@"THe jobid is%@",modelEmp.strDescription);
    //NSLog(@"THe jobid is%@",modelEmp.strEducational_Qualification);
    //NSLog(@"THe jobid is%@",modelEmp.strLocation);
    //NSLog(@"THe jobid is%@",modelEmp.strSkill_required);
    //NSLog(@"THe jobid is%@",modelEmp.strTitle);
    //NSLog(@"THe jobid is%@",modelEmp.strJob_Id);
    
    
    
    
       [cell.self.btnEmpDelete addTarget:self action:@selector(subscribe:) forControlEvents:UIControlEventTouchUpInside];
    
       
        myCell=cell;

    return myCell;
   }
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.mutableArrJobList removeObjectAtIndex:indexPath.row];
        [self.empJobListtableView reloadData];
    }
}




-(void)addJobListEmployer{
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AddJobEmployerViewController *Addjobvc = [sb instantiateViewControllerWithIdentifier:@"AddJobEmployerViewController"];
    
    [self presentViewController:Addjobvc animated:YES completion:nil];
}


@end
