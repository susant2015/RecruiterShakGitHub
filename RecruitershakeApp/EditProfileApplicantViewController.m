//
//  EditProfileApplicantViewController.m
//  RecruitershakeApp
//
//  Created by admin on 13/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EditProfileApplicantViewController.h"
#import "EditProfileViewControllerHeaderButtonCell.h"
#import "EditProfileViewControllerEditLabelcell.h"
#import "RegisterTextFieldTableViewCell.h"
#import "OldPasswordCell.h"
#import "Aboutcell.h"
#import "CameraCell.h"
#import "ProfilePictureCell.h"
#import "BtnUpdateProfile.h"
#import "TextFieldCellName.h"
#import "ModelLogInApplicant.h"
#import "Constants.h"

typedef NS_ENUM(NSInteger, CellContent) {
    
    FirstName,
    LastName,
    Email,
    UserName,
    OldPassword,
    NewPassword,
    ConPassword,
    PhoneNumber,
    Occupation,
    AddrssLine1,
    AddrssLine2,
    City,
    State,
    Country,
    ZipCode,
    Skill,
    About,
    Quotes,
    Camera,
    ProfilePicture,
    FbUrl,
    TwUrl,
    GPlusUrl,
    BtnEdit,
    
    
    Total,
};

NSString static *strPlaceholders[]={
    
    
    [FirstName]=@" *FIRSTNAME",
    [LastName]=@" *LASTNAME",
    [Email]=@"  *Email",
    [UserName]=@"  *UserName",
    [OldPassword]=@" *OLD PASSWORD",
    [NewPassword]=@" *NEW PASSWORD",
    [ConPassword]=@" *CONFORM PASSWORD",
    [PhoneNumber]=@" *PHONENUMBER",
    [Occupation]=@"  *Occupation",
    [AddrssLine1]=@" *ADDRESSLINE1",
    [AddrssLine2]=@" *ADDRESSLINE2",
    [City]=@" *CITY",
    [State]=@" *STATE",
    [Country]=@" *COUNTRY",
    [ZipCode]=@" *ZIPCODE",
    
    [Skill]=@"  Skill",
    [About]=@" *ABOUT",
    [Quotes]=@"  Quates",
    [Camera]=@"  *ProfilePicture",
    [ProfilePicture]=@"ProfilePicture",
    [FbUrl]=@" *FACEBOOK URL",
    [TwUrl]=@" *TWITTER URL",
    [GPlusUrl]=@" *GOOGLE PLUS URL",
    [BtnEdit]=@"",
    
};

@implementation EditProfileApplicantViewController{
    
    NSString *strProfilePicture;
    NSString *strFisrst_Name;
    NSString *strLast_Name;
    NSString  *strOldPassword;
    NSString  *strNewPassword;
    NSString  *strConPassword;
    NSString *strPhone_Number;
    NSString *strAddress_Line1;
    NSString *strAddress_Line2;
    NSString *strCity;
    NSString *strState;
    NSString *strCountry;
    NSString *strZip_Code;
    NSString  *strFbUrl;
    NSString  *strTwUrl;
    NSString  *strGPlusUrl;
    NSString *strSkill;
    NSString  *strQutes;
    NSString *strOccupation;
    NSString  *strAbout;
    NSString *strCamera;
    NSString *strBtnEdit;
    NSMutableArray *arrtxtFieldValue;
    IBOutlet UITableView *editTableViewEmployer;
}

-(void)viewDidLoad{
    
    [super viewDidLoad];
    arrtxtFieldValue=[NSMutableArray arrayWithCapacity:Total];
    
    for (int i=0; i<Total; i++) {
        
        
        //[arrtxtFieldValue addObject:@""];
        if (i ==0){
            [arrtxtFieldValue addObject:modelLogInApplicant.strFirst_Name];
        }
        else if (i==1){
            [arrtxtFieldValue addObject:modelLogInApplicant.strLast_Name];
        }
        else if (i==2){
            [arrtxtFieldValue addObject:modelLogInApplicant.strEmail];
            
        }
        else if (i==3){
            [arrtxtFieldValue addObject:modelLogInApplicant.strUser_Name];
            
        }
        else if (i==4){
            [arrtxtFieldValue addObject:@""];
            
        }
        else if (i==5){
            [arrtxtFieldValue addObject:@""];
            
        }
        else if (i==6){
            [arrtxtFieldValue addObject:@""];
            
        }
        
        else if (i==7){
            [arrtxtFieldValue addObject:modelLogInApplicant.strPhone_Number];
            
        }
        else if (i==8){
            [arrtxtFieldValue addObject:modelLogInApplicant.strOccuption];
            
        }
        else if (i==9){
            [arrtxtFieldValue addObject:modelLogInApplicant.strAddress];
            
        }
        else if (i==10){
            [arrtxtFieldValue addObject:@""];
            
        }
        else if (i==11){
            [arrtxtFieldValue addObject:modelLogInApplicant.strCity];
            
        }
        else if (i==12){
            [arrtxtFieldValue addObject:modelLogInApplicant.strState];
            
        }
        else if (i==13){
            [arrtxtFieldValue addObject:modelLogInApplicant.strCountry];
            
        }
        else if (i==14){
            [arrtxtFieldValue addObject:modelLogInApplicant.strZip_Code];
            
        }
        else if (i==15){
            [arrtxtFieldValue addObject:@""];
            
        }
        else if (i==16){
            [arrtxtFieldValue addObject:modelLogInApplicant.strAbout];
            
        }
        else if (i==16){
            [arrtxtFieldValue addObject:modelLogInApplicant.strQuotes];
            
        }
        else if (i==17){
            [arrtxtFieldValue addObject:@""];
            
        }
        else if (i==18){
            [arrtxtFieldValue addObject:@""];
            
        }
        else if (i==19){
            [arrtxtFieldValue addObject:@""];
            
        }
        else if (i==20){
            [arrtxtFieldValue addObject:@""];
            
        }
        else if (i==21){
            [arrtxtFieldValue addObject:modelLogInApplicant.strFaceBook_Url];
            
        }
        else if (i==22){
            [arrtxtFieldValue addObject:modelLogInApplicant.strTwitter_Url];
            
        }
        else if (i==23){
            [arrtxtFieldValue addObject:modelLogInApplicant.strGplus_Url];
            
        }
        else if (i==24){
            [arrtxtFieldValue addObject:@""];
            
        }
        NSLog(@"The space:%@",arrtxtFieldValue);
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height=56.0f;
    
    
    if (indexPath.row==16 || indexPath.row==17 || indexPath.row==19)
    {
        height=118.0f;
    }
    
    
    else if (indexPath.row==23)
    {
        height=88.0f;
    }
    
    
    return height;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    CGFloat height=0.0f;
    if (section==1) {
        height=56.0f;
    }
    else if (section==2){
        height=22.0f;
    }
    return 24;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
    
    
    
    if(indexPath.row==0) {
        
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
        
        
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
        myCell=cell;
        
    }
    else if(indexPath.row==1) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    else if(indexPath.row==4) {
        
        static NSString *applicantIndexCellIdentifier=@"OldPasswordCell";
        OldPasswordCell  *cell=(OldPasswordCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"OldPasswordCell" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtPasswordPlaceholder setDelegate:self];
        cell.txtPasswordPlaceholder.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        cell.txtPasswordPlaceholder.placeholder =strPlaceholders[indexPath.row];
        cell.txtPasswordPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
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
        cell.txtPasswordPlaceholder.placeholder =strPlaceholders[indexPath.row];
        cell.txtPasswordPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtPasswordPlaceholder.placeholder =strPlaceholders[indexPath.row];
        cell.txtPasswordPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    
    else if(indexPath.row==7) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    else if(indexPath.row==15) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtAboutPlaceholder.placeholder =strPlaceholders[indexPath.row];
        cell.txtAboutPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    else if(indexPath.row==17) {
        
        static NSString *applicantIndexCellIdentifier=@"Aboutcell";
        Aboutcell *cell=(Aboutcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Aboutcell" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtAboutPlaceholder setDelegate:self];
        cell.txtAboutPlaceholder.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        cell.txtAboutPlaceholder.placeholder =strPlaceholders[indexPath.row];
        cell.txtAboutPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    
    else if(indexPath.row==18) {
        
        static NSString *applicantIndexCellIdentifier=@"CameraCell";
        CameraCell *cell=(CameraCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"CameraCell" owner:self options:nil]objectAtIndex:0];
        }
        myCell=cell;
    }
    
    else if(indexPath.row==19) {
        
        static NSString *applicantIndexCellIdentifier=@"ProfilePictureCell";
        ProfilePictureCell *cell=(ProfilePictureCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ProfilePictureCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.imgRecruiter.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInApplicant.strPicture]]];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    else if(indexPath.row==22) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        cell.txtFielfPlaceHolderName.placeholder =strPlaceholders[indexPath.row];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
        myCell=cell;
    }
    else if(indexPath.row==23) {
        
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
    
    [cell.lblRecruiterFirstName setText:modelLogInApplicant.strFirst_Name];
    [cell.lblRecruiterLastName setText:modelLogInApplicant.strLast_Name];
    // [cell.btnBackRecruiter addTarget:self action:@selector(btnRecruiterBack) forControlEvents:UIControlEventTouchUpInside];
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 85.0f;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
    NSLog(@"The arr is%@",arrtxtFieldValue);
    UITableViewCell *cell1=[self getSuperviewOfType:[UITableViewCell class] fromView:textField];
    NSIndexPath *indexPath=[editTableViewEmployer indexPathForCell:cell1];
    
    NSLog(@"indexPath:%ld",(long)indexPath.row);
    if (indexPath.row==0)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strFisrst_Name=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strFisrst_Name atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==1)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strLast_Name=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strLast_Name atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==4)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strOldPassword=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strOldPassword atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==5)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strNewPassword=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strNewPassword atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==6)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strConPassword=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strConPassword atIndex:indexPath.row];
        
        
    }
    
    
    if (indexPath.row==7)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strPhone_Number=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strPhone_Number atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==8)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strOccupation=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strOccupation atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==9)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAddress_Line1=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAddress_Line1 atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==10)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAddress_Line2=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAddress_Line2 atIndex:indexPath.row];
        
        
    }
   
    if (indexPath.row==11)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strCity=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strCity atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==12)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strState=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strState atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==13)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strCountry=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strCountry atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==14)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strZip_Code=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strZip_Code atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==15)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strSkill=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strSkill atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==16)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAbout=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAbout atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==17)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strQutes=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strQutes atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==18)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strCamera=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strCamera atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==19)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strProfilePicture=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strProfilePicture atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==20)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strTwUrl=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strTwUrl atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==21)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strGPlusUrl=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strGPlusUrl atIndex:indexPath.row];
    }
    
}

-(IBAction)btnActionRecruiter{
    
    strOldPassword=[arrtxtFieldValue objectAtIndex:4];
    strNewPassword=[arrtxtFieldValue objectAtIndex:5];
    strConPassword=[arrtxtFieldValue objectAtIndex:6];
    strFisrst_Name=[arrtxtFieldValue objectAtIndex:0];
    strLast_Name=[arrtxtFieldValue objectAtIndex:1];
    strPhone_Number=[arrtxtFieldValue objectAtIndex:7];
    strAddress_Line1=[arrtxtFieldValue objectAtIndex:9];
    strAddress_Line2=[arrtxtFieldValue objectAtIndex:10];
    strCity=[arrtxtFieldValue objectAtIndex:11];
    strState=[arrtxtFieldValue objectAtIndex:12];
    strCountry=[arrtxtFieldValue objectAtIndex:13];
    strZip_Code=[arrtxtFieldValue objectAtIndex:14];
    strFbUrl=[arrtxtFieldValue objectAtIndex:19];
    strTwUrl=[arrtxtFieldValue objectAtIndex:20];
    strGPlusUrl=[arrtxtFieldValue objectAtIndex:21];
    strOccupation=[arrtxtFieldValue objectAtIndex:8];
    strSkill=[arrtxtFieldValue objectAtIndex:15];
    strAbout=[arrtxtFieldValue objectAtIndex:16];
    strQutes=[arrtxtFieldValue objectAtIndex:17];
    
    //[self alertCheck];
    
    
    if ([modelLogInRecruiter.strPassword isEqualToString:strOldPassword] || strOldPassword.length==0) {
        
        
        
        if ([strNewPassword isEqualToString:strConPassword] ||(strNewPassword.length==0 && strConPassword.length==0)) {
            
            
            
            NSLog(@"The arr value is%@",arrtxtFieldValue);
            
            [[EditProfileRecruiterService sharedInstance] editProfileRecruiterUserId:modelLogInRecruiter.strRecruiter_Id oldPassword:strOldPassword newPassword:strNewPassword conformPassword:strConPassword firstName:strFisrst_Name lastName:strLast_Name phoneNumber:strPhone_Number addressOne:strAddress_Line1 addressTwo:strAddress_Line2 city:strCity state:strState country:strCountry zipCode:strZip_Code fbUrl:strFbUrl twUrl:strTwUrl gPlus:strGPlusUrl agencyName:strAgecyName url:strUrl about:strAbout withCompletionHandler:^(id result, BOOL isError, NSString *strMsg)
             
             {
                 if(isError){
                     
                     if(strMsg.length>0){
                         [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                         
                         
                     }
                     else{
                         //[self alertStatus:SomethingWrong :nil];
                         
                     }
                     
                 }
                 else{
                     
                     [[[UIAlertView alloc] initWithTitle:nil message:@"Edit Successfully!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                     UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                     DashBoardRecruiterViewController *Dbapvc = [sb instantiateViewControllerWithIdentifier:@"DashBoardApplicantViewController"];
                     [self presentViewController:Dbapvc animated:YES completion:nil];
                     
                 }
             }]; }
        
        else{
            
            [[[UIAlertView alloc] initWithTitle:nil message:@"Password mismatched" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
        }
    }
    else{
        [[[UIAlertView alloc] initWithTitle:nil message:@"OldPassword mismatched" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
        
    }
    
}
@end

