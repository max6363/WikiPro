//
//  DataManager.h
//  WikiPro
//
//  Created by Minhaz on 18/06/17.
//  Copyright © 2017 iqtech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject

// shared instance
+ (DataManager *)sharedInstance;

- (UIFont *)fontForKey:(NSString *)key;

// ..
// Dummy Data
- (NSMutableDictionary *)dummyData0;

@end
