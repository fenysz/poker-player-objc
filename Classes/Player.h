//
//  Player.h
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.



#import <Foundation/Foundation.h>


@interface Player : NSObject

+ (NSString *)versionString;
- (void)showDown:(NSDictionary *)dictionary;
- (int)betRequest:(NSDictionary *)gamestate;
@end