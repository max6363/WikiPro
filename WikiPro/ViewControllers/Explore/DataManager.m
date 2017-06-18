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
    
    //..
    [self addText:@"History" key:___keyMt clickableTokens:@[] toArray:array];
    
    //..
    //
    [self       addText:@"Introduction and initial release [ edit source ]"
                    key:___keyParT
        clickableTokens:@[
                          @"edit source"
                          ]
                toArray:array];
    
    //..
    [self addText:@"iOS 11 was introduced at the Apple Worldwide Developers Conference keynote address on June 5, 2017.[3][4][5] The first developer beta version was released after the keynote presentation, with a public beta set for release later in mid-2017, and a final version for end-users in late 2017."
              key:___keyPar
  clickableTokens:@[
                    @"Apple Worldwide Developers Conference",
                    @"[3]",
                    @"[4]",
                    @"[5]",
                    @"beta version",
                    ] toArray:array];
    
    
    //..
    [self addText:@"System features" key:___keyMt clickableTokens:@[] toArray:array];
    
    //..
    //
    [self       addText:@"Lock screen [ edit source ]"
                    key:___keyParT
        clickableTokens:@[
                          @"edit source"
                          ]
                toArray:array];
    
    //..
    [self addText:@"The lock screen and Notification Center are combined, allowing users to see all notifications directly on the lock screen. Scrolling up and down will either show or hide notifications.[7][8]"
              key:___keyPar
  clickableTokens:@[
                    @"[7]",
                    @"[8]",
                    ] toArray:array];
    
    //..
    //
    [self       addText:@"Control Center [ edit source ]"
                    key:___keyParT
        clickableTokens:@[
                          @"edit source"
                          ]
                toArray:array];
    
    //..
    [self addText:@"The Control Center receives a significant redesign, unifying its different pages into one and allowing users to 3D Touch the icons for additional button options. Sliders let users adjust volume and brightness.[9] The Control Center is customizable via the Settings app, and allows for a wider range of settings features to be shown,[10][11] including cellular service, Low Power Mode, and a shortcut to the Notes app.[12]"
              key:___keyPar
  clickableTokens:@[
                    @"3D Touch",
                    @"[9]",
                    @"[10]",
                    @"[11]",
                    @"[12]",
                    ] toArray:array];
    
    //..
    //
    [self       addText:@"Siri [ edit source ]"
                    key:___keyParT
        clickableTokens:@[
                          @"edit source"
                          ]
                toArray:array];
    
    //..
    [self addText:@"The Siri intelligent personal assistant will have a more human voice and support language translation, with English, Chinese, French, German, Italian and Spanish available at launch. It will also support follow-up questions by users.[13] Users will also be able to type to Siri.[14]"
              key:___keyPar
  clickableTokens:@[
                    @"Siri intelligent personal assistant",
                    @"13",
                    @"14",
                    ] toArray:array];
    
    //..
    [self addText:@"Siri will be able to use \"on-device learning\", a privacy-minded local learning technique to understand a user's behavior and interests inside different apps, to offer better suggestions and recommendations.[3]"
              key:___keyPar
  clickableTokens:@[
                    @"3",
                    ] toArray:array];
    
    
    
    //..
    //
    [self       addText:@"Settings [ edit source ]"
                    key:___keyParT
        clickableTokens:@[
                          @"edit source"
                          ]
                toArray:array];
    
    //..
    [self addText:@"A new \"Do Not Disturb While Driving\" mode lets users block unnecessary notifications as long as their iPhone is connected to a vehicle through Bluetooth. An auto-reply feature sends a specific reply to senders of messages to let them know the user is currently unavailable through text. Passengers can be granted full notification access to the phone.[15][16]"
              key:___keyPar
  clickableTokens:@[
                    @"iPhone",
                    @"Bluetooth",
                    @"15",
                    @"16",
                    ] toArray:array];
    
    //..
    [self addText:@"A new \"Smart Invert\" feature, dubbed a \"dark mode\" by some publications, inverts the colors on the display, except for images, some apps, and some user interface elements.[17][18]"
              key:___keyPar
  clickableTokens:@[
                    @"17",
                    @"18",
                    ] toArray:array];
    
    //..
    [self addText:@"Users get expanded control over apps' location usage, with every app featuring a \"While Using the App\" location toggle in Settings. This differs from previous iOS versions, in which apps were only required to have \"Never\" or \"Always\" location options.[19][20]"
              key:___keyPar
  clickableTokens:@[
                    @"19",
                    @"20",
                    ] toArray:array];
    
    //..
    [self addText:@"Users can remove rarely-used apps without losing the app's data using the \"Offload App\" button. This allows for a later reinstallation of the app (if available on the App Store), in which data returns and usage can continue.[21] Users can also have those apps removed automatically with the \"Offload Unused Apps\" setting.[22] When an app is offloaded, the app appears on the home screen as a grayed-out icon.[23]"
              key:___keyPar
  clickableTokens:@[
                    @"21",
                    @"App Store",
                    @"22",
                    @"23",
                    ] toArray:array];
    
    //..
    [self addText:@"Personalized suggestions will help the user free up storage space on their device, including emptying Photos trash, backing up messages, and enabling iCloud Photo Library for backing up photos and videos.[24][25]"
              key:___keyPar
  clickableTokens:@[
                    @"iCloud Photo Library",
                    @"24",
                    @"25",
                    ] toArray:array];
    
    //..
    //
    [self       addText:@""
                    key:___keyWikiLogo
        clickableTokens:@[]
                toArray:array];

    result[kKeyDataDictItems] = array;
    
    return result;
}

- (NSMutableDictionary *)dummyData1
{
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    
    result[@"index"] = @(0);
    
    NSMutableArray *array = [NSMutableArray array];
    
    //..
    [self addText:@"https://upload.wikimedia.org/wikipedia/commons/a/a4/Holcodiscidae_-_Spitidiscus_species.JPG" key:___keyImgUrl clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@"Holcodiscidae" key:___keyMt clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@"Holcodiscidae" key:___keyParT clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@"is an ammonite family placed in the order Ammonitida. [1] [2]"
              key:___keyPar
  clickableTokens:@[
                    @"ammonite",
                    @"1",
                    @"2",
                    ] toArray:array];
    
    //..
    [self addText:@"Description" key:___keyMt clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@"Moderately involute with rounded, rectangular, or depressed whorl section; straight or sinous, fine, dense ribs typically continuing over venter and may be periodically truncated by oblique, enlarged ribs, with or without embilical, lateral and ventrolateral tubercles. Suture rather simple.[2] [3]"
              key:___keyPar
  clickableTokens:@[
                    @"2",
                    @"3",
                    ] toArray:array];
    
    //..
    [self addText:@"Genera" key:___keyMt clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@"* Astieridiscus\n* Holcodiscus\n* Jeanthieuloyites\n* Parasaynoceras\n* Spitidiscus"
              key:___keyPar
  clickableTokens:@[
                    @"Astieridiscus",
                    @"Holcodiscus",
                    @"Jeanthieuloyites",
                    @"Parasaynoceras",
                    @"Spitidiscus",
                    ] toArray:array];
    
    
    //..
    [self addText:@"Distribution" key:___keyMt clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@"Fossils of species within this family have been found in the Cretaceous sediments in Argentina, Austria, Bulgaria, Chile, Colombia, the Czech Republic, Czechoslovakia, France, Hungary, Italy, Mexico, Morocco, Portugal, Romania, Slovakia, Spain and Russia. [1][2]"
              key:___keyPar
  clickableTokens:@[
                    @"Cretaceous",
                    @"1",
                    @"2",
                    ] toArray:array];
    
    //..
    [self addText:@"Notes" key:___keyMt clickableTokens:@[] toArray:array];
    
    //..
    [self addText:@""
              key:___keyPar
  clickableTokens:@[
                    @"Cretaceous",
                    @"1",
                    @"2",
                    ] toArray:array];
    
    //..
    //
    [self       addText:@""
                    key:___keyWikiLogo
        clickableTokens:@[]
                toArray:array];
    
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
