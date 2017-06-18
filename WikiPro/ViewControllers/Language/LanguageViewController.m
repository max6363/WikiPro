//
//  LanguageViewController.m
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "LanguageViewController.h"
#import "LanguageCell.h"
#import "LanguageListHeader.h"

@interface LanguageViewController () <UITableViewDelegate,UITableViewDataSource>
{
    __weak IBOutlet UITableView *theTableView;
    NSMutableArray *items;
}
@end

@implementation LanguageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    items = [NSMutableArray array];
    
    [self prepareItems];
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

#define kkRowTitle      @"kkRowTitle"
#define kkRowSubTitle   @"kkRowSubTitle"
#define kkRowText       @"kkRowText"

#pragma mark - Prepare items
- (void)prepareItems
{
    [self addItemWithTitle:@"English" subTitle:@"English" text:@"IOS 11" toArray:items];
    [self addItemWithTitle:@"Eesti" subTitle:@"Eestonian" text:@"IOS 11" toArray:items];
    [self addItemWithTitle:@"فارسی" subTitle:@"Persian" text:@"آی‌اواس ۱۱" toArray:items];
    [self addItemWithTitle:@"中文" subTitle:@"Chinese" text:@"IOS 11" toArray:items];
}

- (void)addItemWithTitle:(NSString *)title subTitle:(NSString *)subTitle text:(NSString *)text toArray:(NSMutableArray *)toArray
{
    NSMutableDictionary *d = [NSMutableDictionary dictionary];
    d[kkRowTitle] = title;
    d[kkRowSubTitle] = subTitle;
    d[kkRowText] = text;
    [toArray addObject:d];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return items.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LanguageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LanguageCell"];
    return cell.contentView.frame.size.height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LanguageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LanguageCell"];
    
    NSMutableDictionary *d = items[indexPath.row];
    cell.lblTitle.text = d[kkRowTitle];
    cell.lblSubtitle.text = d[kkRowSubTitle];
    cell.lblText.text = d[kkRowText];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    LanguageListHeader *cell = [tableView dequeueReusableCellWithIdentifier:@"LanguageListHeader"];
    return cell.contentView.frame.size.height;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    LanguageListHeader *cell = [tableView dequeueReusableCellWithIdentifier:@"LanguageListHeader"];
    return cell;
}

#pragma mark - Actions
- (IBAction)onCloseBtClicked:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
