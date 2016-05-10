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
#import "BaseViewController.h"

typedef NS_ENUM(NSInteger, CellContent) {
    EditLabel,
    FirstName,
    LastName,
    Email,
    UserName,
    OldPassword,
    NewPassword,
    ConPassword,
    AgencyName,
    PhoneNumber,
    AddrssLine1,
    AddrssLine2,
    City,
    State,
    Country,
    ZipCode,
    Url,
    About,
    Camera,
    ProfilePicture,
    FbUrl,
    TwUrl,
    GPlusUrl,
    BtnEdit,
    
    
    Total,
};

 NSString static *strPlaceholders[]={
    
    [EditLabel]=@"",
    [FirstName]=@" *FIRSTNAME",
    [LastName]=@" *LASTNAME",
    [Email]=@"",
    [UserName]=@"",
    [OldPassword]=@" *OLD PASSWORD",
    [NewPassword]=@" *NEW PASSWORD",
    [ConPassword]=@" *CONFORM PASSWORD",
    [AgencyName]=@" *AgencyName",
    [PhoneNumber]=@" *PHONENUMBER",
    [AddrssLine1]=@" *ADDRESSLINE1",
    [AddrssLine2]=@" *ADDRESSLINE2",
    [City]=@" *CITY",
    [State]=@" *STATE",
    [Country]=@" *COUNTRY",
    [ZipCode]=@" *ZIPCODE",
    [Url]=@" *URL",
    [About]=@" *ABOUT",
    [Camera]=@"",
    [ProfilePicture]=@"",
    [FbUrl]=@" *FACEBOOK URL",
    [TwUrl]=@" *TWITTER URL",
    [GPlusUrl]=@" *GOOGLE PLUS URL",
    [BtnEdit]=@"",
   
};

@interface EditProfileRecruiter ()<UITextFieldDelegate>
{
    
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
    NSString *strAgecyName;
    NSString  *strUrl;
    NSString  *strAbout;
    NSString *strBtnEdit;
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
        NSLog(@"The space:%ld",[arrtxtFieldValue count]);
}
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    CGFloat height=56.0f;
    if (indexPath.row==17 || indexPath.row == 19)
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
    
    return 24;
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
        
        cell.lblEditProfile.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
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
        
      
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
        myCell=cell;
        
    }
    else if(indexPath.row==2) {
        
        static NSString *applicantIndexCellIdentifier=@"TextFieldCellName";
        TextFieldCellName *cell=(TextFieldCellName *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"TextFieldCellName" owner:self options:nil]objectAtIndex:0];
        }
        //[cell.txtFielfPlaceHolderName setDelegate:self];
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
        cell.txtFielfPlaceHolderName.highlighted=YES;
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
        cell.txtPasswordPlaceholder.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strPassword attributes:@{NSForegroundColorAttributeName: color}];
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
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Agency Name" attributes:@{NSForegroundColorAttributeName: color}];
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
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *Url" attributes:@{NSForegroundColorAttributeName: color}];
        
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
        
        static NSString *applicantIndexCellIdentifier=@"CameraCell";
        CameraCell *cell=(CameraCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"CameraCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.lblCamera.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    
    else if(indexPath.row==19) {
        
        static NSString *applicantIndexCellIdentifier=@"ProfilePictureCell";
        ProfilePictureCell *cell=(ProfilePictureCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"ProfilePictureCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.imgRecruiter.image=[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:modelLogInRecruiter.strPicture]]];
        strProfilePicture=[arrtxtFieldValue objectAtIndex:indexPath.row];
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
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *FACEBOOK LINK" attributes:@{NSForegroundColorAttributeName: color}];
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
        UIColor *color = [UIColor whiteColor];
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"  *TWITTER LINK" attributes:@{NSForegroundColorAttributeName: color}];
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
        cell.txtFielfPlaceHolderName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:modelLogInRecruiter.strGplus_Url attributes:@{NSForegroundColorAttributeName: color}];
        
        cell.txtFielfPlaceHolderName.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
        // strGPlusUrl=[arrtxtFieldValue objectAtIndex:indexPath.row];
        
        myCell=cell;
    }
    else if(indexPath.row==23) {
        
        static NSString *applicantIndexCellIdentifier=@"BtnUpdateProfile";
        BtnUpdateProfile *cell=(BtnUpdateProfile *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
        if (!cell) {
            cell=[[[NSBundle mainBundle] loadNibNamed:@"BtnUpdateProfile" owner:self options:nil]objectAtIndex:0];
        }
        [cell.btnEditUpdate addTarget:self action:@selector(btnActionRecruiter) forControlEvents:UIControlEventTouchUpInside];
        strBtnEdit=[arrtxtFieldValue objectAtIndex:indexPath.row];
        myCell=cell;
    }
    
    
    
    return myCell;
}


-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
    NSLog(@"The arr is%@",arrtxtFieldValue);
    UITableViewCell *cell1=[self getSuperviewOfType:[UITableViewCell class] fromView:textField];
    NSIndexPath *indexPath=[editTableViewRecruiter indexPathForCell:cell1];
    
    NSLog(@"indexPath:%ld",(long)indexPath.row);
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
    if (indexPath.row==5)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strOldPassword=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strOldPassword atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==6)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strNewPassword=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strNewPassword atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==7)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strConPassword=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strConPassword atIndex:indexPath.row];
        
        
    }
    
    
    if (indexPath.row==8)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strPhone_Number=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strPhone_Number atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==9)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAgecyName=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAgecyName atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==10)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAddress_Line1=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAddress_Line1 atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==11)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAddress_Line2=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAddress_Line2 atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==12)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strCity=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strCity atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==13)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strState=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strState atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==14)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strCountry=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strCountry atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==15)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strZip_Code=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strZip_Code atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==16)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strUrl=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strUrl atIndex:indexPath.row];
        
        
        
    }
    if (indexPath.row==17)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAbout=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAbout atIndex:indexPath.row];
        
        
        
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
-(IBAction)btnActionRecruiter{
    
    strOldPassword=[arrtxtFieldValue objectAtIndex:5];
    strNewPassword=[arrtxtFieldValue objectAtIndex:6];
    strConPassword=[arrtxtFieldValue objectAtIndex:7];
    strFisrst_Name=[arrtxtFieldValue objectAtIndex:1];
    strLast_Name=[arrtxtFieldValue objectAtIndex:2];
    strPhone_Number=[arrtxtFieldValue objectAtIndex:9];
    strAddress_Line1=[arrtxtFieldValue objectAtIndex:10];
    strAddress_Line2=[arrtxtFieldValue objectAtIndex:11];
    strCity=[arrtxtFieldValue objectAtIndex:12];
    strState=[arrtxtFieldValue objectAtIndex:13];
    strCountry=[arrtxtFieldValue objectAtIndex:14];
    strZip_Code=[arrtxtFieldValue objectAtIndex:15];
    strFbUrl=[arrtxtFieldValue objectAtIndex:20];
    strTwUrl=[arrtxtFieldValue objectAtIndex:21];
    strGPlusUrl=[arrtxtFieldValue objectAtIndex:22];
    strAgecyName=[arrtxtFieldValue objectAtIndex:8];
    strUrl=[arrtxtFieldValue objectAtIndex:16];
    strAbout=[arrtxtFieldValue objectAtIndex:17];
    
    if (strNewPassword==strConPassword) {
        
    }
    else{
        
       [[[UIAlertView alloc] initWithTitle:nil message:@"Password mismatched" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
    }
    
    
    if ([modelLogInRecruiter.strPassword isEqualToString:strOldPassword]) {
        
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
            
            
        }
     }]; }
    
    else{
        
        [[[UIAlertView alloc] initWithTitle:nil message:@"password mismatched" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
    }
    
}
@end
