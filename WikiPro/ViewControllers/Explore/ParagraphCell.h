//
//  ParagraphCell.h
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ParagraphCellDelegate;

@interface ParagraphCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet FRHyperLabel *lblTitleWithLinks;
@property (nonatomic) NSMutableDictionary *dataDict;
@property (nonatomic) id <ParagraphCellDelegate> delegate;

- (void)updateLinksAndText;

@end

@protocol ParagraphCellDelegate <NSObject>

@optional
- (void)didSelectLinkWithText:(NSString *)text;

@end
