//
//  NSDictionary+JSON.m
//  NSDictionary from JSON string converter
//
//  Created by Kákonyi Roland on 2014.04.10..
#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

+ (NSDictionary *)fromJsonString:(NSString *)jsonString {
	NSError *e = nil;
	NSDictionary *jsonDict =
		[NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
										options:NSJSONReadingMutableContainers
										  error:&e];
	if (e != nil) {
		return nil;
	}
	return jsonDict;
}
@end
