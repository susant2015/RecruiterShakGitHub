//
//  EditProfileEmployerViewController.m
//  RecruitershakeApp
//
//  Created by admin on 15/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EditProfileEmployerViewController.h"
#import "EditProfileViewControllerHeaderButtonCell.h"
#import "EditProfileViewControllerEditLabelcell.h"
#import "RegisterTextFieldTableViewCell.h"
#import "OldPasswordCell.h"
#import "Aboutcell.h"
#import "CameraCell.h"
#import "ProfilePictureCell.h"
#import "BtnUpdateProfile.h"
#import "TextFieldCellName.h"
#import "ModelLogInEmployer.h"
#import "Constants.h"
#import "EditOrganationTypeTableViewCell.h"

@interface EditProfileEmployerViewController ()<UITextFieldDelegate>

@end
@implementation EditProfileEmployerViewController

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height=0.0f;
    if (indexPath.row==0) {
        height=56.0f;
    }
    else if (indexPath.row==1)
    {
        height=56.0f;
    }
    else if (indexPath.row==2)
    {
        height=56.0f;
    }
    else if (indexPath.row==3)
    {
        height=56.0f;
    }
    else if (indexPath.row==4)
    {
        height=56.0f;
    }
    else if (indexPath.row==5)
    {
        height=56.0f;
    }
    else if (indexPath.row==6)
    {
        height=56.0f;
    }
    else if (indexPath.row==7)
    {
        height=56.0f;
    }
    else if (indexPath.row==8)
    {
        height=56.0f;
    }
    
    else if (indexPath.row==9)
    {
        height=56.0f;
    }
    else if (indexPath.row==10)
    {
        height=56.0f;
    }
    else if (indexPath.row==11)
    {
        height=56.0f;
    }
    else if (indexPath.row==12)
    {
        height=56.0f;
    }
    else if (indexPath.row==13)
    {
        height=56.0f;
    }
    else if (indexPath.row==14)
    {
        height=56.0f;
    }
    else if (indexPath.row==15)
    {
        height=56.0f;
    }
    else if (indexPath.row==16)
    {
        height=56.0f;
    }
    
    else if (indexPath.row==17)
    {
        height=118.0f;
    }
    
    else if (indexPath.row==18)
    {
        height=56.0f;
    }
    
    else if (indexPath.row==19)
    {
        height=56.0f;
    }
    else if (indexPath.row==20)
    {
        height=56.0f;
    }
    else if (indexPath.row==21)
    {
        height=56.0f;
    }
    else if (indexPath.row==22)
    {
        height=88.0f;
    }
    
    
    return height;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   
    return 23;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
    
    if (indexPath.row==0) {
        
        static NSString *applicantIndexCellIdentifier=@"EditProfileViewControllerEditLabelcell";
        EditProfileViewControllerEditLabelcell *cell=(EditProfileViewControllerEditLabelcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"EditProfileViewControllerEditLabelcell" owner:self options:nil]objectAtIndex:0];
        }
        
        myCell=cell;
        
    }
    
    else if(indexPath.row==1) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        //cell.txtFielfPlaceHolderName.text=modelLogInRecruiter.strFirst_Name;
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strFirst_Name attributes:@{NSForegroundColorAttributeName: color}];
        
        
        
        myCell=cell;
        
    }
    else if(indexPath.row==2) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strLast_Name attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==3) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strEmail attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==4) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strUser_Name attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==5) {
        
        static NSString *applicantIndexCellIdentifier=@"OldPasswordCell";
        OldPasswordCell  *cell=(OldPasswordCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"OldPasswordCell" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtPasswordPlaceholder setDelegate:self];
        cell.txtPasswordPlaceholder.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtPasswordPlaceholder.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *OLD PASSWORD" attributes:@{NSForegroundColorAttributeName: color}];
        
        myCell=cell;
    }
    else if(indexPath.row==6) {
        
        static NSString *applicantIndexCellIdentifier=@"OldPasswordCell";
        OldPasswordCell  *cell=(OldPasswordCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"OldPasswordCell" owner:self options:nil]objectAtIndex:0];
        }
        
        [cell.txtPasswordPlaceholder setDelegate:self];
        cell.txtPasswordPlaceholder.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtPasswordPlaceholder.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *NEW PASSWORD" attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==7) {
        
        static NSString *applicantIndexCellIdentifier=@"OldPasswordCell";
        OldPasswordCell  *cell=(OldPasswordCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"OldPasswordCell" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtPasswordPlaceholder setDelegate:self];
        cell.txtPasswordPlaceholder.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtPasswordPlaceholder.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *CONFIRM PASSWORD" attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    
    else if(indexPath.row==8) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strPhone_Number attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    
    else if(indexPath.row==9) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *ADDRESS LINE1" attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==10) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *ADDRESS LINE2" attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==11) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strCity attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==12) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strState attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==13) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strCountry attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==14) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strZip_Code attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==15) {
        
        static NSString *applicantIndexCellIdentifier=@"EditOrganationTypeTableViewCell";
        EditOrganationTypeTableViewCell *cell=(EditOrganationTypeTableViewCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"EditOrganationTypeTableViewCell" owner:self options:nil]objectAtIndex:0];
        }
       //[cell.txtFielfPlaceHolderName setDelegate:self];
        //cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        //cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        //UIColor *color = [UIColor whiteColor];
        //cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *SKILL" attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==16) {
        
        static NSString *applicantIndexCellIdentifier=@"Aboutcell";
        Aboutcell *cell=(Aboutcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Aboutcell" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtAboutPlaceholder setDelegate:self];
        cell.txtAboutPlaceholder.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtAboutPlaceholder.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInEmployer.strAbout attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    
    
    else if(indexPath.row==17) {
        
        static NSString *applicantIndexCellIdentifier=@"CameraCell";
        CameraCell *cell=(CameraCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"CameraCell" owner:self options:nil]objectAtIndex:0];
        }
        myCell=cell;
    }
    
    else if(indexPath.row==18) {
        
        static NSString *applicantIndexCellIdentifier=@"ProfilePictureCell";
        ProfilePictureCell *cell=(ProfilePictureCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ProfilePictureCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.imgRecruiter.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInEmployer.strPicture]]];
        myCell=cell;
    }
    else if(indexPath.row==19) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *FACEBOOK LINK" attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==20) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *TWITTER LINK" attributes:@{NSForegroundColorAttributeName: color}];
        myCell=cell;
    }
    else if(indexPath.row==21) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *GOOGLE PLUS LINK" attributes:@{NSForegroundColorAttributeName: color}];
        
        myCell=cell;
    }
    else if(indexPath.row==22) {
        
        static NSString *applicantIndexCellIdentifier=@"BtnUpdateProfile";
        BtnUpdateProfile *cell=(BtnUpdateProfile *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"BtnUpdateProfile" owner:self options:nil]objectAtIndex:0];
        }
        myCell=cell;
    }
    
    
    
    return myCell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    
    static NSString *HeaderIdentifier=@"EditProfileViewControllerHeaderButtonCell";
    
    
    EditProfileViewControllerHeaderButtonCell *cell = (EditProfileViewControllerHeaderButtonCell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"EditProfileViewControllerHeaderButtonCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    [cell.lblRecruiterFirstName setText:modelLogInEmployer.strFirst_Name];
    [cell.lblRecruiterLastName setText:modelLogInEmployer.strLast_Name];
    
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 38.0f;
}
@end
