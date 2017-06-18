//
//  ParagraphTitleCell.h
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ParagraphTitleCellDelegate;

@interface ParagraphTitleCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet FRHyperLabel *lblTitleWithLinks;
@property (nonatomic) NSMutableDictionary *dataDict;
@property (nonatomic) id <ParagraphTitleCellDelegate> delegate;

- (void)updateLinksAndText;
@end

@protocol ParagraphTitleCellDelegate <NSObject>

@optional
- (void)paragraphTitleCell:(ParagraphTitleCell *)paragraphTitleCell  didSelectLinkWithText:(NSString *)text;

@end
