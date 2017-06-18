//
//  NSString+Utils.h
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Utils)

- (CGSize)getSizeWithConstrainedHeight:(CGFloat)height font:(UIFont *)font;
- (CGSize)getSizeWithConstrainedWidth:(CGFloat)width font:(UIFont *)font;

@end
