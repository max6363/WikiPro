//
//  UIView+Utils.m
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "UIView+Utils.h"

@implementation UIView (Utils)

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = 1.0;
}

- (void)setBorderWithRedColor
{
    self.layer.borderColor = [UIColor redColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderWithBlueColor
{
    self.layer.borderColor = [UIColor blueColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderWithCyanColor
{
    self.layer.borderColor = [UIColor cyanColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderWithBlackColor
{
    self.layer.borderColor = [UIColor blackColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderWithClearColor
{
    self.layer.borderColor = [UIColor clearColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderWithWhiteColor
{
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderWithGreenColor
{
    self.layer.borderColor = [UIColor greenColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderWithPurpleColor
{
    self.layer.borderColor = [UIColor purpleColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderWithGrayColor
{
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.borderWidth = 1;
}

- (void)setBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth
{
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius
{
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius masksToBounds:(BOOL)masksToBounds
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = masksToBounds;
}

@end
