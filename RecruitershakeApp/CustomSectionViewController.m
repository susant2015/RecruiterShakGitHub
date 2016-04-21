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

@interface CustomSectionViewController ()

@end

@implementation CustomSectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma Table

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger mySection;
    if (section==0) {
        return mySection=1;
    }
    else if (section==1){
        return mySection=1;
    }
    else if (section==2){
        return mySection=1;
    }
    return mySection;
}






-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
     static NSString *HeaderIdentifier=@"ApplicantHeaderCell";
    
    if (indexPath.section == 0) {
        
        ApplicantHeaderCell *cell = (ApplicantHeaderCell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ApplicantHeaderCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
        }
        myCell=cell;
        // Assign your data
    } else if (indexPath.section == 1) {
        // Assign your data
        
        static NSString *applicantIndexCellIdentifier=@"ApplicantDetailsCell";
        ApplicantIndexCell *cell=(ApplicantIndexCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantDetailsCell" owner:self options:nil]objectAtIndex:0];
        }
        myCell=cell;
    }
    else if (indexPath.section==2){
        static NSString *applicantIndexCellIdentifier2=@"ApplicantIndexCell";
        ApplicantIndexCell *cell=(ApplicantIndexCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier2];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ApplicantIndexCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        myCell=cell;
    }
    return myCell;
}
- (NSString *)tableView:(UITableView *)tblView titleForHeaderInSection:(NSInteger)section {
    
    NSString *sectionHeader = nil;
    
    
    //SET TITLE FOR EACH SECTION:
    if(section == 2) {
        sectionHeader = @"";
    }
    
    //RETURN THE SECTION HEADER FOR EACH SECTION:
    return sectionHeader;
   
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    CGFloat height=0.0f;
    if (indexPath.section==0) {
        height=200.0f;
    }
    else if (indexPath.section==1)
    {
        height=70.0f;
    }
    else if (indexPath.section==2)
    {
        height=110.0f;
    }
    return height;
}
@end
