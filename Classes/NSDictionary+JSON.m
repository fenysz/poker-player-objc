//
//  NSDictionary+JSON.m
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.



#import "NSDictionary+JSON.h"


@implementation NSDictionary (JSON)

+ (NSDictionary *)fromJsonString:(NSString *)request {
	NSError *e = nil;
	NSDictionary *JSON =
		[NSJSONSerialization JSONObjectWithData:[request dataUsingEncoding:NSUTF8StringEncoding]
										options:NSJSONReadingMutableContainers
										  error:&e];
	if (e != nil) {
		return nil;
	}
	return JSON;
}
@end