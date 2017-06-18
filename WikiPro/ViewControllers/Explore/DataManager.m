//
//  DataManager.m
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

// shared instance
+ (DataManager *)sharedInstance {
    static DataManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[DataManager alloc] init];
    });
    return instance;
}

- (NSMutableDictionary *)dummyData0
{
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    
    result[@"index"] = @(0);
    
    NSMutableArray *array = [NSMutableArray array];
    
    //..
    [self addText:@"https://upload.wikimedia.org/wikipedia/en/9/9e/IOS_11_Homescreen_iPhone_7_Plus.png" key:___keyImgUrl clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@"iOS 11" key:___keyMt clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@"iOS 11 is the eleventh major release of the iOS mobile operating system developed by Apple Inc., being the successor to iOS 10. It was announced at the company's Worldwide Developers Conference on June 5, 2017. The first beta version was released for developers after the keynote presentation, with a public beta set for release in mid-2017, and a final version for consumers in late 2017."
              key:___keyPar
  clickableTokens:@[
                    @"eleventh major release",
                    @"iOS",
                    @"mobile operating system",
                    @"iOS 10",
                    @"Worldwide Developers Conference",
                    @"beta version",
                    ] toArray:array];
    
    //..
    [self addText:@"iOS 11 introduces significant design changes for the operating system. The lock screen and Notification Center are combined, allowing all notifications to be displayed directly on the lock screen, with options for scrolling up and down to show or hide content. The different pages of the Control Center are unified into a single page, with the ability to 3D Touch icons for more options, and users can customize the settings shown. The App Store receives a complete visual overhaul, bringing a greater focus on editorial content and daily highlights. A \"Files\" file manager app is available for organization of local files and files stored in cloud services. The iPad receives exclusive software feature expansions, including an always-accessible application dock, drag-and-drop file support between apps, and a new multitasking interface showing multiple apps at once. Siri will be able to translate between languages, will feature more human voices, and use a privacy-minded \"on-device learning\" technique to better understand a user's interests and offer improved suggestions. The camera will feature new settings for improved portrait mode photos and will use new encoding technologies to reduce photo and video sizes. Messages will be integrated with iCloud for fully synchronized messages across iOS and macOS devices, and will support person-to-person Apple Pay payments."
              key:___keyPar
  clickableTokens:@[
                    @"3D Touch",
                    @"App Store",
                    @"file manager",
                    @"iPad",
                    @"Siri",
                    @"Messages",
                    @"iCloud",
                    @"Mac OS",
                    @"Apple Pay",
                    ] toArray:array];
    
    result[kKeyDataDictItems] = array;
    
    return result;
}

- (void)addText:(NSString *)text key:(NSString *)key clickableTokens:(NSArray *)clickableTokens toArray:(NSMutableArray *)array
{
    NSMutableDictionary *d = [NSMutableDictionary dictionary];
    d[___kDataKeyText] = text;
    d[___kDataKeyTextType] = key;
    d[___kDataKeyTextClickableTokens] = clickableTokens;
    [array addObject:d];
}

- (UIFont *)fontForKey:(NSString *)key
{
    UIFont *font = [UIFont fontWithName:@"Helvetica-Neue" size:14];
    if ([key isEqualToString:___keyMt]) {
        font = [UIFont fontWithName:@"Helvetica-Neue" size:25];
    }
    else if ([key isEqualToString:___keyPar]) {
        font = [UIFont fontWithName:@"Helvetica-Neue" size:16];
    }
    return font;
}

@end
