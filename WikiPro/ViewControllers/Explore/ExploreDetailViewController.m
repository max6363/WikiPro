//
//  ExploreDetailViewController.m
//  WikiPro
//
//  Created by Minhaz on 17/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "ExploreDetailViewController.h"

@interface ExploreDetailViewController ()

@end

@implementation ExploreDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
-(IBAction)shareButtonClicked:(id)sender
{
    NSString *topicToShare = @"Topic Would go here...";
    
    NSString *textToShare = @"WikiPro, iOS application...";
    
    NSString *textToShare2 = @"\n\ndeveloped by,";
    
    NSURL *myWebsite = [NSURL URLWithString:@"http://minhaz.xyz"];
    
    NSArray *objectsToShare = @[topicToShare, textToShare, textToShare2, myWebsite];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:nil];
    
    [self.view.window.rootViewController presentViewController:activityVC animated:YES completion:nil];
}

#pragma mark - Segue
- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@""]) {
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
