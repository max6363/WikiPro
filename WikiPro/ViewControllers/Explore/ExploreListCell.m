//
//  ExploreListCell.m
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "ExploreListCell.h"

@implementation ExploreListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self.imgIcon setBorderColor:[UIColor lightGrayColor] borderWidth:0.5f cornerRadius:4];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
