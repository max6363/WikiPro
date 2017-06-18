//
//  DetailViewController.m
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "DetailViewController.h"
#import "ImageViewCell.h"
#import "TitleCell.h"
#import "ParagraphTitleCell.h"
#import "ParagraphCell.h"

@interface DetailViewController () <UITableViewDataSource,UITableViewDelegate,ParagraphCellDelegate, ParagraphTitleCellDelegate>
{
    __weak IBOutlet UITableView *theTableView;
    __weak IBOutlet UIView *popOverFontSize;
    __weak IBOutlet UISlider *sliderFontSize;
    BOOL isSaved;
}
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [popOverFontSize setBorderColor:[UIColor lightGrayColor] borderWidth:.5f cornerRadius:6];
    
    // reload table data
    [self reloadTableData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Reload Table Data
- (void)reloadTableData
{
    theTableView.delegate = self;
    theTableView.dataSource = self;
    [theTableView reloadData];
}

#pragma mark - Actions
- (IBAction)onSearchBtClicked:(id)sender {
    
}

- (IBAction)onBackBtClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onFontSizeChangeBtClicked:(id)sender {
//    [self showPopOverForFontSize];
}

- (IBAction)onSliderForFontSizeValueChanged:(UISlider *)sender {
    
}

-(IBAction)shareButtonClicked:(id)sender
{
    NSString *textToShare = @"WikiPro, iOS application...";
    
    NSString *textToShare2 = @"\n\ndeveloped by,";
    
    NSURL *myWebsite = [NSURL URLWithString:@"http://minhaz.xyz"];
    
    NSArray *objectsToShare = @[textToShare, textToShare2, myWebsite];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:nil];
    
    [self.view.window.rootViewController presentViewController:activityVC animated:YES completion:nil];
}
- (IBAction)onSavePageClicked:(UIBarButtonItem *)sender {
    isSaved = !isSaved;
    if (isSaved) {
        UIColor *color = [UIColor colorWithRed:0 green:64/255.0 blue:128/255.0 alpha:1];
        sender.tintColor = color;
    } else {
        sender.tintColor = [UIColor lightGrayColor];
    }
}



#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSMutableDictionary *dataDic = self.data[kKeyDataDict];
    NSArray *items = dataDic[kKeyDataDictItems];
    return items.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSMutableDictionary *dataDic = self.data[kKeyDataDict];
    NSArray *items = dataDic[kKeyDataDictItems];
    NSMutableDictionary *d = items[indexPath.row];
    NSString *key = d[___kDataKeyTextType];
    
    if ([key isEqualToString:___keyImgUrl]) {
        ImageViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageViewCell"];
        return cell.contentView.frame.size.height;
        
    } else if ([key isEqualToString:___keyMt]) {
        TitleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TitleCell"];
        UIFont *font = cell.lblTitle.font;
        
        NSString *text = d[___kDataKeyText];
        CGSize size = [text getSizeWithConstrainedWidth:cell.lblTitle.frame.size.width font:font];
        return (size.height < 60 ? 60 : size.height);
        
    } else if ([key isEqualToString:___keyParT]) {
        ParagraphTitleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ParagraphTitleCell"];
        UIFont *font = cell.lblTitle.font;
        
        NSString *text = d[___kDataKeyText];
        CGSize size = [text getSizeWithConstrainedWidth:cell.lblTitle.frame.size.width font:font];
        return size.height + 30;
    } else if ([key isEqualToString:___keyPar]) {
        ParagraphCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ParagraphCell"];
        UIFont *font = cell.lblTitle.font;
        
        NSString *text = d[___kDataKeyText];
        CGSize size = [text getSizeWithConstrainedWidth:cell.lblTitle.frame.size.width font:font];
        return size.height + 50;
    } else if ([key isEqualToString:___keyWikiLogo]) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"wiki_logo"];
        return cell.contentView.frame.size.height;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableDictionary *dataDic = self.data[kKeyDataDict];
    NSArray *items = dataDic[kKeyDataDictItems];
    NSMutableDictionary *d = items[indexPath.row];
    NSString *key = d[___kDataKeyTextType];
    NSString *text = d[___kDataKeyText];
    
    if ([key isEqualToString:___keyImgUrl]) {
        ImageViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageViewCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell.imgView setImageWithURL:[NSURL URLWithString:text] placeholderImage:nil options:SDWebImageRefreshCached completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            if (error) {
                
            }
            else {
                
            }
        } usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        return cell;
        
    } else if ([key isEqualToString:___keyMt]) {
        TitleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TitleCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.lblTitle.text = text;
        return cell;
        
    } else if ([key isEqualToString:___keyParT]) {
        ParagraphTitleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ParagraphTitleCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.lblTitle.text = text;
        cell.dataDict = d;
        cell.lblTitle.hidden = YES;
        cell.delegate = self;
        [cell updateLinksAndText];
        return cell;
    } else if ([key isEqualToString:___keyPar]) {
        ParagraphCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ParagraphCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.lblTitle.text = text;
        cell.dataDict = d;
        cell.lblTitle.hidden = YES;
        cell.delegate = self;
        [cell updateLinksAndText];
        return cell;
    }
    else if ([key isEqualToString:___keyWikiLogo]) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"wiki_logo"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"blank_cell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

#pragma mark - UITableViewDelegate

#pragma mark - ParagraphCellDelegate
- (void)paragraphCell:(ParagraphCell *)paragraphCell didSelectLinkWithText:(NSString *)text
{
    NSLog(@"Selected: %@", text);
}

#pragma mark - ParagraphTitleCellDelegate
- (void)paragraphTitleCell:(ParagraphTitleCell *)paragraphTitleCell didSelectLinkWithText:(NSString *)text
{
    NSLog(@"Selected: %@", text);
}

#pragma mark - Show Popover for Font Size
- (void)showPopOverForFontSize
{
    self.view.userInteractionEnabled = NO;
    
    NSInteger size = 3;
    sliderFontSize.value = size;
    
    [popOverFontSize removeFromSuperview];
    
    UIWindow *window = self.view.window;
    CGRect f = popOverFontSize.frame;
    f.origin.x = window.frame.size.width/2 - f.size.width/2;
    f.origin.y = window.frame.size.height + f.size.height;
    popOverFontSize.frame = f;
    [window addSubview:popOverFontSize];
    
    f.origin.y = window.frame.size.height - popOverFontSize.frame.size.height - 80;
    
    [UIView animateWithDuration:.35 animations:^{
        popOverFontSize.frame = f;
    } completion:^(BOOL finished) {
        self.view.userInteractionEnabled = YES;
    }];
}

@end
