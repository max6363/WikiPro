//
//  ParagraphTitleCell.m
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "ParagraphTitleCell.h"

@implementation ParagraphTitleCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)updateLinksAndText
{
    //Step 1: Define a normal attributed string for non-link texts
    NSString *string = self.dataDict[___kDataKeyText];
    NSDictionary *attributes = @{NSFontAttributeName: _lblTitleWithLinks.font};
    
    _lblTitleWithLinks.attributedText = [[NSAttributedString alloc]initWithString:string attributes:attributes];
    
    
    //Step 2: Define a selection handler block
    void(^handler)(FRHyperLabel *label, NSString *substring) = ^(FRHyperLabel *label, NSString *substring){
        if (self.delegate && [self.delegate respondsToSelector:@selector(paragraphTitleCell:didSelectLinkWithText:)]) {
            [self.delegate paragraphTitleCell:self didSelectLinkWithText:substring];
        }
    };
    
    NSArray *clickableStrings = self.dataDict[___kDataKeyTextClickableTokens];
    //Step 3: Add link substrings
    [_lblTitleWithLinks setLinksForSubstrings:clickableStrings withLinkHandler:handler];
}


@end
