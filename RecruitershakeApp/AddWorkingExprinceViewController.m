//
//  AddWorkingExprinceViewController.m
//  RecruitershakeApp
//
//  Created by admin on 02/03/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import "AddWorkingExprinceViewController.h"

@interface AddWorkingExprinceViewController ()<UITextFieldDelegate>
-(void)txtFieldCompanyNameField;
-(void)txtFieldTitleField;
-(void)txtFieldLocationField;
-(void)txtFieldStartDateField;
-(void)txtFieldEndDateField;
-(void)txtFieldDescriptionField;
@end

@implementation AddWorkingExprinceViewController

@synthesize txtFieldCompanyName=_txtFieldCompanyName;
@synthesize txtFieldTitle=_txtFieldTitle;
@synthesize txtFieldLocation=_txtFieldLocation;
@synthesize txtFieldStartDate=_txtFieldStartDate;
@synthesize txtFieldEndDate=_txtFieldEndDate;
@synthesize txtFieldDescription=_txtFieldDescription;
@synthesize btnAddWorkExprience=_btnAddWorkExprience;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self txtFieldCompanyNameField];
    [self txtFieldTitleField];
    [self txtFieldLocationField];
    [self txtFieldStartDateField];
    [self txtFieldEndDateField];
    [self txtFieldDescriptionField];
    [self.btnAddWorkExprience addTarget:self
                 action:@selector(myAction)
       forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)txtFieldCompanyNameField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldCompanyName setDelegate:self];
    self.txtFieldCompanyName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *COMPANY NAME" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldCompanyName.keyboardType=UIKeyboardTypeDefault;
    
}
-(void)txtFieldTitleField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldTitle setDelegate:self];
    self.txtFieldTitle.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *TITLE" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldTitle.keyboardType=UIKeyboardTypeDefault;
}
-(void)txtFieldLocationField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldLocation setDelegate:self];
    self.txtFieldLocation.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *LOCATION" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldLocation.keyboardType=UIKeyboardTypeDefault;
}

-(void)txtFieldStartDateField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldStartDate setDelegate:self];
    self.txtFieldStartDate.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *START DATE" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldStartDate.keyboardType=UIKeyboardTypeDefault;
}

-(void)txtFieldEndDateField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldEndDate setDelegate:self];
    self.txtFieldEndDate.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *END DATE" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldEndDate.keyboardType=UIKeyboardTypeDefault;
}
-(void)txtFieldDescriptionField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldDescription setDelegate:self];
    self.txtFieldDescription.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *DESCRIPTION" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldDescription.keyboardType=UIKeyboardTypeDefault;
}
-(void)myAction;
{
    NSLog(@"User touch the btn");
}
@end
