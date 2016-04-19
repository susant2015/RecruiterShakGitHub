//
//  EditProfileRecruiter.m
//  RecruitershakeApp
//
//  Created by admin on 19/04/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "EditProfileRecruiter.h"
#import "EditProfileViewControllerHeaderButtonCell.h"
#import "EditProfileViewControllerEditLabelcell.h"
#import "RegisterTextFieldTableViewCell.h"
#import "OldPasswordCell.h"
#import "Aboutcell.h"
#import "CameraCell.h"
#import "ProfilePictureCell.h"
#import "BtnUpdateProfile.h"
#import "TextFieldCellName.h"
#import "ModelLogInRecruiter.h"
#import "Constants.h"
#import "EditProfileRecruiterService.h"

typedef NS_ENUM(NSInteger, CellContent) {
    OldPassword,
    NewPassword,
    ConPassword,
    FirstName,
    LastName,
    PhoneNumber,
    AddrssLine1,
    AddrssLine2,
    City,
    State,
    Country,
    ZipCode,
    FbUrl,
    TwUrl,
    GPlusUrl,
    Occupation,
    Skills,
    About,
    Quotes,
    
    Total,
};

NSString static *strPlaceholders[]={
    
    [OldPassword]=@" *OLD PASSWORD",
    [NewPassword]=@" *NEW PASSWORD",
    [ConPassword]=@" *CONFORM PASSWORD",
    [FirstName]=@" *FIRSTNAME",
    [LastName]=@" *LASTNAME",
    [PhoneNumber]=@" *PHONENUMBER",
    [AddrssLine1]=@" *ADDRESSLINE1",
    [AddrssLine2]=@" *ADDRESSLINE2",
    [City]=@" *CITY",
    [State]=@" *STATE",
    [Country]=@" *COUNTRY",
    [ZipCode]=@" *ZIPCODE",
    [FbUrl]=@" *FACEBOOK URL",
    [TwUrl]=@" *TWITTER URL",
    [GPlusUrl]=@" *GOOGLE PLUS URL",
    [Occupation]=@" *OCCUPTION",
    [Skills]=@" *SKILLS",
    [About]=@" *ABOUT",
    [Quotes]=@" *QUOTES"
};

@interface EditProfileRecruiter ()<UITextFieldDelegate>
{
    
    NSString  *strOldPassword;
    NSString  *strNewPassword;
    NSString  *strConPassword;
    NSString *strFisrst_Name;
    NSString *strLast_Name;
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
    NSString *strOccupation;
    NSString  *strSkills;
    NSString  *strAbout;
    NSString  *strQuotes;
    NSMutableArray *arrtxtFieldValue;
    IBOutlet UITableView *editTableViewRecruiter;
}

@end

@implementation EditProfileRecruiter

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    arrtxtFieldValue=[NSMutableArray arrayWithCapacity:Total];
    
    for (int i=0; i<Total; i++) {
        [arrtxtFieldValue addObject:@""];
        NSLog(@"The space:%@",arrtxtFieldValue);
}
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
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
        height=118.0f;
    }
    else if (indexPath.row==19)
    {
        height=56.0f;
    }
    else if (indexPath.row==20)
    {
        height=118.0f;
    }
    else if (indexPath.row==21)
    {
        height=56.0f;
    }
    else if (indexPath.row==22)
    {
        height=56.0f;
    }
    else if (indexPath.row==23)
    {
        height=56.0f;
    }
    else if (indexPath.row==24)
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
    return 25;
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
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strFirst_Name attributes:@{NSForegroundColorAttributeName: color}];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        //cell.txtFielfPlaceHolderName.placeholder=strPlaceholders[indexPath.row];
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strLast_Name attributes:@{NSForegroundColorAttributeName: color}];
        
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strEmail attributes:@{NSForegroundColorAttributeName: color}];
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strUser_Name attributes:@{NSForegroundColorAttributeName: color}];
        
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        UIColor *color = [UIColor whiteColor];
        cell.txtPasswordPlaceholder.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *NEW PASSWORD" attributes:@{NSForegroundColorAttributeName: color}];
        cell.txtPasswordPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        
        cell.txtPasswordPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strPhone_Number attributes:@{NSForegroundColorAttributeName: color}];
        
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strOccuption attributes:@{NSForegroundColorAttributeName: color}];
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *ADDRESS LINE1" attributes:@{NSForegroundColorAttributeName: color}];
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *ADDRESS LINE2" attributes:@{NSForegroundColorAttributeName: color}];
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strCity attributes:@{NSForegroundColorAttributeName: color}];
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strState attributes:@{NSForegroundColorAttributeName: color}];
        
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strCountry attributes:@{NSForegroundColorAttributeName: color}];
        
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strZip_Code attributes:@{NSForegroundColorAttributeName: color}];
        
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
        myCell=cell;
    }
    else if(indexPath.row==16) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtFielfPlaceHolderName setDelegate:self];
        cell.txtFielfPlaceHolderName.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *SKILL" attributes:@{NSForegroundColorAttributeName: color}];
        
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
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
        UIColor *color = [UIColor whiteColor];
        cell.txtAboutPlaceholder.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strAbout attributes:@{NSForegroundColorAttributeName: color}];
        
        cell.txtAboutPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
        myCell=cell;
    }
    else if(indexPath.row==18) {
        
        static NSString *applicantIndexCellIdentifier=@"Aboutcell";
        Aboutcell *cell=(Aboutcell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"Aboutcell" owner:self options:nil]objectAtIndex:0];
        }
        [cell.txtAboutPlaceholder setDelegate:self];
        cell.txtAboutPlaceholder.keyboardType=UIKeyboardTypeDefault;
        cell.backgroundColor=cell.contentView.backgroundColor=[UIColor clearColor];
        UIColor *color = [UIColor whiteColor];
        cell.txtAboutPlaceholder.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *QUOTES" attributes:@{NSForegroundColorAttributeName: color}];
        
        cell.txtAboutPlaceholder.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
        myCell=cell;
    }
    
    else if(indexPath.row==19) {
        
        static NSString *applicantIndexCellIdentifier=@"CameraCell";
        CameraCell *cell=(CameraCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"CameraCell" owner:self options:nil]objectAtIndex:0];
        }
        myCell=cell;
    }
    
    else if(indexPath.row==20) {
        
        static NSString *applicantIndexCellIdentifier=@"ProfilePictureCell";
        ProfilePictureCell *cell=(ProfilePictureCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ProfilePictureCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.imgRecruiter.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInRecruiter.strPicture]]];
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
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *FACEBOOK LINK" attributes:@{NSForegroundColorAttributeName: color}];
        
        
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *TWITTER LINK" attributes:@{NSForegroundColorAttributeName: color}];
        
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    else if(indexPath.row==23) {
        
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
        
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
        myCell=cell;
    }
    else if(indexPath.row==24) {
        
        static NSString *applicantIndexCellIdentifier=@"BtnUpdateProfile";
        BtnUpdateProfile *cell=(BtnUpdateProfile *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"BtnUpdateProfile" owner:self options:nil]objectAtIndex:0];
        }
        [cell.btnEditUpdate addTarget:self action:@selector(btnActionRecruiter:) forControlEvents:UIControlEventTouchUpInside];
        myCell=cell;
    }
    
    
    
    return myCell;
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
    NSIndexPath *indexPath=[editTableViewRecruiter indexPathForCell:cell1];
    
    NSLog(@"indexPath:%ld",(long)indexPath.row);
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
    if (indexPath.row==1)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strFisrst_Name=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strFisrst_Name atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==2)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strLast_Name=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strLast_Name atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==7)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strPhone_Number=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strPhone_Number atIndex:indexPath.row];
        
        
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
    if (indexPath.row==20)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strFbUrl=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strFbUrl atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==21)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strTwUrl=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strTwUrl atIndex:indexPath.row];
        
        
        
    }
    
    if (indexPath.row==22)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strGPlusUrl=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strGPlusUrl atIndex:indexPath.row];
        
        
        
    }
    
    if (indexPath.row==8)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strOccupation=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strOccupation atIndex:indexPath.row];
        
        
        
    }
    
    if (indexPath.row==15)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strSkills=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strSkills atIndex:indexPath.row];
        
        
        
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
        strQuotes=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strQuotes atIndex:indexPath.row];
        
        
        
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    
    static NSString *HeaderIdentifier=@"EditProfileViewControllerHeaderButtonCell";
    
    
    EditProfileViewControllerHeaderButtonCell *cell = (EditProfileViewControllerHeaderButtonCell *)[tableView dequeueReusableCellWithIdentifier:HeaderIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"EditProfileViewControllerHeaderButtonCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    [cell.lblRecruiterFirstName setText:modelLogInRecruiter.strFirst_Name];
    [cell.lblRecruiterLastName setText:modelLogInRecruiter.strLast_Name];
    return cell;
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 38.0f;
}
-(IBAction)btnActionRecruiter:(id)sender{
    
    strOldPassword=[arrtxtFieldValue objectAtIndex:0];
    strNewPassword=[arrtxtFieldValue objectAtIndex:1];
    strConPassword=[arrtxtFieldValue objectAtIndex:2];
    strFisrst_Name=[arrtxtFieldValue objectAtIndex:3];
    strFisrst_Name=[arrtxtFieldValue objectAtIndex:4];
    strPhone_Number=[arrtxtFieldValue objectAtIndex:5];
    strAddress_Line1=[arrtxtFieldValue objectAtIndex:6];
    strAddress_Line2=[arrtxtFieldValue objectAtIndex:7];
    strCity=[arrtxtFieldValue objectAtIndex:8];
    strState=[arrtxtFieldValue objectAtIndex:9];
    strCountry=[arrtxtFieldValue objectAtIndex:10];
    strZip_Code=[arrtxtFieldValue objectAtIndex:11];
    strFbUrl=[arrtxtFieldValue objectAtIndex:12];
    strTwUrl=[arrtxtFieldValue objectAtIndex:13];
    strGPlusUrl=[arrtxtFieldValue objectAtIndex:14];
    strOccupation=[arrtxtFieldValue objectAtIndex:15];
    strSkills=[arrtxtFieldValue objectAtIndex:16];
    strAbout=[arrtxtFieldValue objectAtIndex:17];
    strQuotes=[arrtxtFieldValue objectAtIndex:18];
    
    NSLog(@"The arr value is%@",arrtxtFieldValue);
    
    [[EditProfileRecruiterService sharedInstance] editProfileRecruiterUserId:modelLogInRecruiter.strRecruiter_Id oldPassword:strOldPassword newPassword:strNewPassword conformPassword:strConPassword firstName:strFisrst_Name lastName:strLast_Name phoneNumber:strPhone_Number addressOne:strAddress_Line1 addressTwo:strAddress_Line2 city:strCity state:strState country:strCountry zipCode:strZip_Code fbUrl:strFbUrl twUrl:strTwUrl gPlus:strGPlusUrl occupation:strOccupation skills:strSkills about:strAbout quotes:strQuotes withCompletionHandler:^(id result, BOOL isError, NSString *strMsg){
        if(isError){
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                //[self alertStatus:SomethingWrong :nil];
                
            }
            
        }
        else{
            
            
        }
    }];
    
}
@end
