//
//  UIView+Utils.h
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Utils)

- (void)setBorderColor:(UIColor *)borderColor;
- (void)setBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth;
- (void)setBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth cornerRadius:(CGFloat)cornerRadius;
- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setCornerRadius:(CGFloat)cornerRadius masksToBounds:(BOOL)masksToBounds;
- (void)setBorderWithRedColor;
- (void)setBorderWithBlueColor;
- (void)setBorderWithCyanColor;
- (void)setBorderWithBlackColor;
- (void)setBorderWithClearColor;
- (void)setBorderWithWhiteColor;
- (void)setBorderWithGreenColor;
- (void)setBorderWithPurpleColor;
- (void)setBorderWithGrayColor;

@end
