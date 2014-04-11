//
//  NSDictionary+JSON.h
//  NSDictionary from JSON string converter
//
//  Created by Kákonyi Roland on 2014.04.10..
#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)

+ (NSDictionary *)fromJsonString:(NSString *)jsonString;
@end
