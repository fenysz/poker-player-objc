//
//  NSDictionary+JSON.h
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.



#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)

+ (NSDictionary *)fromJsonString:(NSString *)request;
@end