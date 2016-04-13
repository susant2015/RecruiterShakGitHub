//
//  RegisterViewController.m
//  RecruitershakeApp
//
//  Created by admin on 04/03/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//
#import "BaseViewController.h"
#import "RegisterViewController.h"
#import "RegisterHeaderTableViewCell.h"
#import "RegisterTextFieldTableViewCell.h"
#import "RegisterFooterTableViewCell.h"
#import "RegisterService.h"
#import "DashBoardEmployerViewController.h"
typedef NS_ENUM(NSInteger, CellContent) {
    FirstName,
    LastName,
    Email,
    UserName,
    Password,
    PhoneNumber,
    AddrssLine1,
    AddrssLine2,
    City,
    State,
    Country,
    ZipCode,
    Occupation,
    Total,
};

NSString static *strPlaceholders[]={
    [FirstName]=@" *FIRSTNAME",
    [LastName]=@" *LASTNAME",
    [Email]=@" *Email",
    [UserName]=@" *USERNAME",
    [Password]=@" *PASSWORD",
    [PhoneNumber]=@" *PHONENUMBER",
    [AddrssLine1]=@" *ADDRESSLINE1",
    [AddrssLine2]=@" *ADDRESSLINE2",
    [City]=@" *CITY",
    [State]=@" *STATE",
    [Country]=@" *COUNTRY",
    [ZipCode]=@" *ZIPCODE",
    [Occupation]=@" *Occupation",
};

@interface RegisterViewController ()<UITextFieldDelegate>
{
    NSString *strFisrst_Name;
    NSString *strLast_Name;
    NSString *strEmail;
    NSString *strUser_Name;
    NSString *strPassword;
    NSString *strPhone_Number;
    NSString *strAddress_Line1;
     NSString *strAddress_Line2;
    NSString *strCity;
    NSString *strState;
    NSString *strCountry;
    NSString *strZip_Code;
    NSString *strOccupation;
    NSMutableArray *arrtxtFieldValue;
    RegisterFooterTableViewCell *footerCell;
     IBOutlet UITableView *tblRegistration;
}

@end

@implementation RegisterViewController
{
    NSArray *images;
    UITableView *tableView;
    NSString *strButtonValue;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrtxtFieldValue=[NSMutableArray arrayWithCapacity:Total];
    
    for (int i=0; i<Total; i++) {
        [arrtxtFieldValue addObject:@""];
        NSLog(@"The space:%@",arrtxtFieldValue);
    }
    
    
    UITableView *tableView;
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return Total;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"The index path is:%ld",(long)indexPath.row);
    
    static NSString *TxtFieldCellIdentifier=@"RegisterTextFieldTableViewCell";
    
        RegisterTextFieldTableViewCell *cell = (RegisterTextFieldTableViewCell *)[tableView dequeueReusableCellWithIdentifier:TxtFieldCellIdentifier];
        if (cell == nil)
        {
            
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"RegisterTextFieldTableViewCell" owner:self options:nil];
            cell = [nib objectAtIndex:0];
            //cell.txtField.textColor = [UIColor whiteColor];
        }
     cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.txtField.delegate=(id <UITextFieldDelegate>)self;
    cell.txtField.placeholder=strPlaceholders[indexPath.row];
    cell.txtField.text=[arrtxtFieldValue objectAtIndex:indexPath.row];
    
    if (indexPath.row==FirstName) {
        cell.txtField.returnKeyType=UIReturnKeyNext;
        cell.txtField.textColor = [UIColor whiteColor];
       // UIColor *color = [UIColor whiteColor];
        //cell.txtField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *FIRSTNAME" attributes:@{NSForegroundColorAttributeName: color}];
        
        
    }
    if (indexPath.row==LastName) {
        cell.txtField.returnKeyType=UIReturnKeyNext;
        cell.txtField.textColor=[UIColor whiteColor];
       
        
    }
    if (indexPath.row==Email) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
    }
    if (indexPath.row==UserName) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
    }
    if (indexPath.row==Password) {
        cell.txtField.returnKeyType=UIReturnKeyNext;
        cell.txtField.secureTextEntry=YES;
        
    }
    
    if (indexPath.row==PhoneNumber) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
    }
    if (indexPath.row==AddrssLine1) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
    }
    if (indexPath.row==AddrssLine2) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
    }
    if (indexPath.row==City) {
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
    }
    if (indexPath.row==State) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
    }
    if (indexPath.row==Country) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
    }
    if (indexPath.row==ZipCode) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
        
        
    }
    if (indexPath.row==Occupation) {
        [cell.txtField setKeyboardType:UIKeyboardTypeEmailAddress];
        cell.txtField.returnKeyType=UIReturnKeyNext;
        
        
        
    }

    
    return cell;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}




- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
     static NSString *SpaceIdentifier=@"RegisterHeaderTableViewCell";
    
    
    RegisterHeaderTableViewCell *cell = (RegisterHeaderTableViewCell *)[tableView dequeueReusableCellWithIdentifier:SpaceIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"RegisterHeaderTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        [cell.btnApplicant addTarget:self action:@selector(btnActionApplicant:) forControlEvents:UIControlEventTouchUpInside];
        [cell.btnEmployer addTarget:self action:@selector(btnActionEmployer:) forControlEvents:UIControlEventTouchUpInside];
        [cell.btnRecruiter addTarget:self action:@selector(btnActionRecruiter:) forControlEvents:UIControlEventTouchUpInside];
      
    }
    
    return cell;
    
}
-(IBAction)btnActionApplicant:(UIButton*)sender{
    RegisterHeaderTableViewCell *cell1=[self getSuperviewOfType:[RegisterHeaderTableViewCell class] fromView:sender];
    [cell1.btnApplicant setSelected:NO];
    [cell1.btnEmployer setSelected:NO];
    [cell1.btnRecruiter setSelected:NO];
    [sender setSelected:YES];
    if (cell1.btnApplicant ==sender) {
        strButtonValue=@"applicant";
    }
}

-(IBAction)btnActionRecruiter:(UIButton*)sender{
    RegisterHeaderTableViewCell *cell1=[self getSuperviewOfType:[RegisterHeaderTableViewCell class] fromView:sender];
    [cell1.btnApplicant setSelected:NO];
    [cell1.btnEmployer setSelected:NO];
    [cell1.btnRecruiter setSelected:NO];
    [sender setSelected:YES];
    if (cell1.btnRecruiter ==sender) {
        strButtonValue=@"recruiter";
    }
}

-(IBAction)btnActionEmployer:(UIButton*)sender{
    RegisterHeaderTableViewCell *cell1=[self getSuperviewOfType:[RegisterHeaderTableViewCell class] fromView:sender];
    [cell1.btnApplicant setSelected:NO];
    [cell1.btnEmployer setSelected:NO];
    [cell1.btnRecruiter setSelected:NO];
    [sender setSelected:YES];
    
    if (cell1.btnEmployer==sender) {
        strButtonValue=@"employer";
    }
}




- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    
    static NSString *FootercellIdentifier=@"RegisterFooterTableViewCell";
    RegisterFooterTableViewCell *cell = (RegisterFooterTableViewCell *)[tableView dequeueReusableCellWithIdentifier:FootercellIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"RegisterFooterTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
     [cell.btnAction addTarget:self action:@selector(btnActionSubmit) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40.0f;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 200.0f;
}
-(CGFloat)tableView:(UITableView*)tableView heightForFooterInSection:(NSInteger)section
{
   
    return 250.0f;
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
    
    UITableViewCell *cell1=[self getSuperviewOfType:[UITableViewCell class] fromView:textField];
    NSIndexPath *indexPath=[tblRegistration indexPathForCell:cell1];
    
    NSLog(@"indexPath:%ld",(long)indexPath.row);
    if (indexPath.row==0)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strUser_Name=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strUser_Name atIndex:indexPath.row];
       
        
    }
    if (indexPath.row==1)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strLast_Name=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strLast_Name atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==2)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strUser_Name=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strUser_Name atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==3)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strPassword=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strPassword atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==4)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strPhone_Number=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strPhone_Number atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==5)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAddress_Line1=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAddress_Line1 atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==6)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strAddress_Line2=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strAddress_Line2 atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==7)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strCity=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strCity atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==8)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strState=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strState atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==9)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strCountry=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strCountry atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==10)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strUser_Name=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strUser_Name atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==11)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strZip_Code=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strZip_Code atIndex:indexPath.row];
        
        
    }
    if (indexPath.row==13)
    {
        [arrtxtFieldValue removeObjectAtIndex:indexPath.row];
        strOccupation=[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [arrtxtFieldValue insertObject:strOccupation atIndex:indexPath.row];
        
        
    
}
}

-(void)btnActionSubmit{
   
    NSLog(@"The Arr is:%@",arrtxtFieldValue);
    
    strFisrst_Name=[arrtxtFieldValue objectAtIndex:0];
    strLast_Name=[arrtxtFieldValue objectAtIndex:1];
    strEmail=[arrtxtFieldValue objectAtIndex:2];
    strUser_Name=[arrtxtFieldValue objectAtIndex:3];
    strPassword=[arrtxtFieldValue objectAtIndex:4];
    strPhone_Number=[arrtxtFieldValue objectAtIndex:5];
    strAddress_Line1=[arrtxtFieldValue objectAtIndex:6];
    strAddress_Line2=[arrtxtFieldValue objectAtIndex:7];
    strCity=[arrtxtFieldValue objectAtIndex:8];
    strState=[arrtxtFieldValue objectAtIndex:9];
    strCountry=[arrtxtFieldValue objectAtIndex:10];
    strZip_Code=[arrtxtFieldValue objectAtIndex:11];
    strOccupation=[arrtxtFieldValue objectAtIndex:12];
    
    [self alertChecking];
  
    

    
    [[RegisterService sharedInstance] callRegisterServiceForUserName:strUser_Name password:strPassword group:strButtonValue strEmail:strEmail FirstName:strFisrst_Name lastName:strLast_Name phoneNumber:strPhone_Number address1:strAddress_Line1 address2:strAddress_Line2 city:strCity country:strCountry state:strState zipcode:strZip_Code occupation:strOccupation withCompletionHandler:^(id result, BOOL isError, NSString *strMsg){
        if(isError){
            
            if(strMsg.length>0){
                [[[UIAlertView alloc] initWithTitle:nil message:strMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
                
                
            }
            else{
                //[self alertStatus:SomethingWrong :nil];
                
            }
            
        }
        else{
            
            UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            DashBoardEmployerViewController *Dbpvc = [sb instantiateViewControllerWithIdentifier:@"DashBoardPageViewController"];
           [self presentViewController:Dbpvc animated:YES completion:nil];
        }
    }];
    
    
}
-(BOOL)alertChecking
{
    if (strFisrst_Name.length==0)
    {
       
      [ self showAlertWithTitle:@"Error" andMessage:@"Please enter your First Name."];
        
    }
   else if (strLast_Name.length==0)
    {
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please enter the your Last Name."];
    }
  else  if (![self NSStringIsValidEmail:strEmail])
    {
        //        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter a valid email id." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        //
        //        return NO;
        [self NotValidEmail];
    }
    
  else  if (strUser_Name.length==0)
    {
        
         [ self showAlertWithTitle:@"Error" andMessage:@"Please enter your User Name."];
    }
    
    
   else if (strPassword.length==0)
    {
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please re-enter your Password."];
        
    }
  else  if (strAddress_Line1.length==0)
    {
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please re-enter the AddressLine1."];
    }
  else  if (strAddress_Line2.length==0)
    {
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please re-enter the AddressLine2."];
    }
  else  if (strCity.length==0)
    {
        
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please re-enter your City."];
    }
  else  if (strState.length==0)
    {
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please re-enter your State."];
    }
   else if (strCountry.length==0)
    {
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please re-enter your Country."];
    }
  else  if (strZip_Code.length==0)
    {
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please re-enter your ZipCode."];
    }
   else if (strOccupation.length==0)
    {
        
        [ self showAlertWithTitle:@"Error" andMessage:@"Please re-enter your Occuption."];
    }

    
    return YES;
}

-(BOOL) NotValidEmail
{
    [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Please enter a valid email id." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    
    return NO;
    
}
-(BOOL) NSStringIsValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = NO; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}
-(void) dismissKeyboard:(id)sender
{
    [self.view endEditing:YES];
}
@end
