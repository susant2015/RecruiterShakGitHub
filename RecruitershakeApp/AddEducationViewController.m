//
//  AddEducationViewController.m
//  RecruitershakeApp
//
//  Created by admin on 29/02/16.
//  Copyright (c) 2016 Xigmapro. All rights reserved.
//

#import "AddEducationViewController.h"

@interface AddEducationViewController ()<UITextFieldDelegate>
-(void)txtFieldSchool;
-(void)txtFieldStart;
-(void)txtFiledEnd;
-(void)txtFieldStudyField;
-(void)txtFieldDegreeField;
-(void)txtFieldGradeField;
-(void)txtFieldDescField;

@end

@implementation AddEducationViewController

@synthesize txtFieldSchoolName=_txtFieldSchoolName;
@synthesize txtFieldStartDate=_txtFieldStartDate;
@synthesize txtFiledEndDte=_txtFiledEndDte;
@synthesize txtFieldStudy=_txtFieldStudy;
@synthesize txtFieldDegree=_txtFieldDegree;
@synthesize txtFieldGrade=_txtFieldGrade;
@synthesize txtFieldDescription=_txtFieldDescription;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self txtFieldSchool];
    [self txtFieldStart];
    [self txtFiledEnd];
    [self txtFieldStudyField];
    [self txtFieldDegreeField];
    [self txtFieldGradeField];
    [self txtFieldDescField];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)txtFieldSchool{
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldSchoolName setDelegate:self];
    self.txtFieldSchoolName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *SCHOOL NAME" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldSchoolName.keyboardType=UIKeyboardTypeDefault;
}
-(void)txtFieldStart{
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldStartDate setDelegate:self];
    self.txtFieldStartDate.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *START DATE" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldStartDate.keyboardType=UIKeyboardTypeDefault;
    
}
-(void)txtFiledEnd{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFiledEndDte setDelegate:self];
    self.txtFiledEndDte.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *END DATE" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFiledEndDte.keyboardType=UIKeyboardTypeDefault;
}
-(void)txtFieldStudyField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldStudy setDelegate:self];
    self.txtFieldStudy.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *STUDY FIELD" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldStudy.keyboardType=UIKeyboardTypeDefault;
}
-(void)txtFieldDegreeField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldDegree setDelegate:self];
    self.txtFieldDegree.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *DEGREE" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldDegree.keyboardType=UIKeyboardTypeDefault;
}
-(void)txtFieldGradeField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldGrade setDelegate:self];
    self.txtFieldGrade.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *GRADE" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldGrade.keyboardType=UIKeyboardTypeDefault;
}
-(void)txtFieldDescField{
    
    UIColor *colorWhite=[UIColor whiteColor];
    [self.txtFieldDescription setDelegate:self];
    self.txtFieldDescription.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@" *DESCRIPTION" attributes:@{NSForegroundColorAttributeName: colorWhite}];
    self.txtFieldDescription.keyboardType=UIKeyboardTypeDefault;
}
@end
