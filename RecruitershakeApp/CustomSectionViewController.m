//
//  CustomSectionViewController.m
//  RecruitershakeApp
//
//  Created by admin on 20/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "CustomSectionViewController.h"
#import "ApplicantHeaderCell.h"
#import "ApplicantIndexCell.h"
#import "ModelLogInApplicant.h"
#import "Constants.h"
#import "WorkExprienceDegreeCell.h"
#import "ApplicantWorkingExprienceService.h"

@interface CustomSectionViewController ()

@end

@implementation CustomSectionViewController{
    
    NSMutableArray *mutableArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
  [[ApplicantWorkingExprienceService  sharedInstance] applicantUserId:modelLogInApplicant.strRecruiter_Id  withCompletionHandler:^(id result, BOOL isError, NSString *strMsg) {
        if(isError){
            [[[UIAlertView alloc] initWithTitle:nil message:@"mismatched email" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                //[self alertStatus:SomethingWrong :nil];
                
            }
            
        }
        else{
            mutableArray=[[NSMutableArray alloc] init];
            [mutableArray addObject:result];
             NSLog(@"The result is:%@",mutableArray);
            [[[UIAlertView alloc] initWithTitle:nil message:@"Check your mail" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
           
        }
    }];   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
   
}

#pragma Table

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView == modelLogInApplicant.strRecruiter_Id){
        return([mutableArray count]);
    }
    return 0;
}






-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    
   
        static NSString *applicantIndexCellIdentifier2=@"WorkExprienceDegreeCell";
        WorkExprienceDegreeCell *cell=(WorkExprienceDegreeCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier2];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"WorkExprienceDegreeCell" owner:self options:nil]objectAtIndex:0];
        }
      //  cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSLog(@"%@",[mutableArray objectAtIndex:0]);
    [tableView reloadData];
   
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    CGFloat height=110.0f;
    return height;
}
@end
