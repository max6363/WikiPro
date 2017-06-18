//
//  SavedViewController.m
//  WikiPro
//
//  Created by Minhaz on 16/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "SavedViewController.h"
#import "DataManager.h"
#import "ExploreListCell.h"
#import "DetailViewController.h"

@interface SavedViewController () <UITableViewDelegate,UITableViewDataSource>
{
    __weak IBOutlet UITableView *theTableView;
    NSMutableArray *arrIdentifiers;
    NSMutableArray *arrItems;
}
@end

@implementation SavedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*arrIdentifiers = [NSMutableArray arrayWithObjects:
     @"image_cell",
     @"title_cell",
     @"subtitle_cell",
     @"description_title",
     @"description_text",
     nil];*/
    
    arrItems = [NSMutableArray array];
    [self prepareDict];
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

#pragma mark - Prepare dict
- (void)prepareDict
{
    [self addItemWithTitle:@"iOS 11" subTitle:@"iOS 11 is the eleventh major release of the iOS mobile operating system developed by Apple Inc., being the successor to iOS 10. It was announced at the company's Worldwide Developers Conference on June 5, 2017. The first beta version was released for developers after the keynote presentation, with a public beta set for release in mid-2017, and a final version for consumers in late 2017." imageUrl:@"https://upload.wikimedia.org/wikipedia/en/9/9e/IOS_11_Homescreen_iPhone_7_Plus.png" toArray:arrItems dataDict:[[DataManager sharedInstance] dummyData0]];
    [self addItemWithTitle:@"Holcodiscidae" subTitle:@"Moderately involute with rounded, rectangular, or depressed whorl section; straight or sinous, fine, dense ribs typically continuing over venter and may be periodically truncated by oblique, enlarged ribs, with or without embilical, lateral and ventrolateral tubercles. Suture rather simple" imageUrl:@"https://upload.wikimedia.org/wikipedia/commons/a/a4/Holcodiscidae_-_Spitidiscus_species.JPG" toArray:arrItems dataDict:[[DataManager sharedInstance] dummyData1]];
}

- (void)addItemWithTitle:(NSString *)title subTitle:(NSString *)subTitle imageUrl:(NSString *)imageUrl toArray:(NSMutableArray *)toArray dataDict:(NSMutableDictionary *)dataDict
{
    NSMutableDictionary *d = [NSMutableDictionary dictionary];
    d[kKeyTitle] = title;
    d[kKeySubtitle] = subTitle;
    d[kKeyImageUrl] = imageUrl;
    d[kKeyDataDict] = dataDict;
    [toArray addObject:d];
}

#pragma mark - Actions
- (IBAction)onClearBtClicked:(id)sender
{
    
}

- (IBAction)onSearchBtClicked:(id)sender
{
    
}

/*
 #pragma mark - UITableViewDataSource
 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
 {
 return 1;
 }
 
 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 NSString *identifier = arrIdentifiers[indexPath.row];
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
 return cell.contentView.frame.size.height;
 }
 
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
 {
 return arrIdentifiers.count;
 }
 
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 NSString *identifier = arrIdentifiers[indexPath.row];
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
 return cell;
 }
 
 #pragma mark - Segue
 - (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender
 {
 
 }
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 if ([segue.identifier isEqualToString:@"show_details"]) {
 
 }
 }
 */

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExploreListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExploreListCell"];
    return cell.contentView.frame.size.height;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExploreListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExploreListCell"];
    
    NSMutableDictionary *d = arrItems[indexPath.row];
    cell.lblTitle.text = d[kKeyTitle];
    cell.lblSubtitle.text = d[kKeySubtitle];
    
    NSString *url = d[kKeyImageUrl];
    [cell.imgIcon setImageWithURL:[NSURL URLWithString:url] placeholderImage:nil options:SDWebImageRefreshCached completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (error) {
            
        }
        else {
            
        }
    } usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSMutableDictionary *d = arrItems[indexPath.row];
    
    DetailViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    vc.data = d;
    [self.tabBarController.navigationController pushViewController:vc animated:YES];
    
}

#pragma mark - Segue
- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"show_details"]) {
        
    }
}


@end
