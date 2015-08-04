//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by Alex on 15/8/4.
//  Copyright (c) 2015年 Alex. All rights reserved.
//

#import "ViewController.h"
#import "KeyBoardAnimation.h"

#define isIPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)


@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;
@property (weak, nonatomic) IBOutlet UITextField *textField4;
@property (weak, nonatomic) IBOutlet UITextField *textField5;
@property (weak, nonatomic) IBOutlet UITextField *textField6;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (isIPhone4) {
        [_bottomConstraint setConstant:40];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [KeyBoardAnimation keyBoardBeginAnimation:textField view:self.view];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [KeyBoardAnimation keyBoardEndAnimation:self.view];
}

@end
