//
//  KeyBoardAnimation.h
//  ScrollViewDemo
//
//  Created by Alex on 15/8/4.
//  Copyright (c) 2015年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KeyBoardAnimation : NSObject

+ (void)keyBoardBeginAnimation:(UITextField *)textField view:(UIView *)view;

+ (void)keyBoardEndAnimation:(UIView *)view;

@end
