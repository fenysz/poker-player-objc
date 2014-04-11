//
//  PlainLogger.m
//  Plain logger to stdout
//
//  Created by Kákonyi Roland on 2014.04.10..
//

#import "PlainLogger.h"

@implementation PlainLogger

+ (void)log:(NSString *)format, ... {
	va_list args;
	va_start(args, format);
	NSString *formattedString = [[NSString alloc] initWithFormat:format
													   arguments:args];
	va_end(args);
	NSFileHandle *fileHandle = [NSFileHandle fileHandleWithStandardOutput];
	[fileHandle
		writeData:[formattedString dataUsingEncoding:NSNEXTSTEPStringEncoding]];
	[formattedString release];
}

@end
