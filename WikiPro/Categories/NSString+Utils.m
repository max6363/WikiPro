//
//  NSString+Utils.m
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

- (CGSize)getSizeWithConstrainedHeight:(CGFloat)height font:(UIFont *)font
{
    if (self == nil || [self isKindOfClass:[NSNull class]] || height == 0 || font == nil || [font isKindOfClass:[NSNull class]]) {
        return CGSizeZero;
    }
    NSDictionary *attributes = @{
                                 NSFontAttributeName : font
                                 };
    CGRect rect = [self boundingRectWithSize:CGSizeMake(INFINITY, height) options:NSStringDrawingUsesFontLeading attributes:attributes context:NULL];
    return rect.size;
}

- (CGSize)getSizeWithConstrainedWidth:(CGFloat)width font:(UIFont *)font
{
    if (self == nil || [self isKindOfClass:[NSNull class]] || width == 0 || font == nil || [font isKindOfClass:[NSNull class]]) {
        return CGSizeZero;
    }
    NSDictionary *attributes = @{
                                 NSFontAttributeName : font
                                 };
    CGRect rect  = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil];
    return rect.size;
}

@end
