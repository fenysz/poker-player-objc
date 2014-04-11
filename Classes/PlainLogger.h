//
//  PlainLogger.h
//  Plain logger to stdout
//
//  Created by Kákonyi Roland on 2014.04.10..
//

#import <Foundation/Foundation.h>

@interface PlainLogger : NSObject

+ (void)log:(NSString *)format, ...;
@end
