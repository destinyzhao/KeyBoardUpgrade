//
//  KeyBoardAnimation.m
//  ScrollViewDemo
//
//  Created by Alex on 15/8/4.
//  Copyright (c) 2015年 Alex. All rights reserved.
//

#import "KeyBoardAnimation.h"
#define animationDuration 0.3f

@implementation KeyBoardAnimation

+ (void)keyBoardBeginAnimation:(UITextField *)textField view:(UIView *)view;
{
    CGRect frame = textField.frame;
    NSInteger offset = frame.origin.y + 260 - (view.frame.size.height - 216);//键盘高度216

    [UIView beginAnimations:@"ResizeForKeyBoard" context:nil];
    [UIView setAnimationDuration:animationDuration];
    float width = view.frame.size.width;
    float height = view.frame.size.height;
    if(offset > 0)
    {
        CGRect rect = CGRectMake(0.0f, -offset,width,height);
        view.frame = rect;
    }
    [UIView commitAnimations];
}

+ (void)keyBoardEndAnimation:(UIView *)view
{
    [UIView beginAnimations:@"ResizeForKeyboard" context:nil];
    [UIView setAnimationDuration:animationDuration];
    CGRect rect = CGRectMake(0.0f, 0.0f, view.frame.size.width, view.frame.size.height);
    view.frame = rect;
    [UIView commitAnimations];
}

@end
