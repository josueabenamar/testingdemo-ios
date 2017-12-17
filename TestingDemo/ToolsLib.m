//
//  ToolsLib.m
//  TestingDemo
//
//  Created by Developer on 07/12/17.
//  Copyright © 2017 Developer. All rights reserved.
//


#import "ToolsLib.h"

@implementation ToolsLib

+(BOOL)isValidPhoneNumber:(NSString *)phoneNumber
{
    NSString *regExPattern = @"^[2-9][0-9]{9}$";
    NSRegularExpression *regEx = [[NSRegularExpression alloc]
                                  initWithPattern:regExPattern
                                  options:NSRegularExpressionCaseInsensitive
                                  error:nil];
    NSUInteger regExMatches = [regEx numberOfMatchesInString:phoneNumber
                                                     options:0
                                                       range:NSMakeRange(0, [phoneNumber length])];
    return (regExMatches == 0) ? NO : YES ;
}

@end
