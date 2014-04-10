//
//  main.m
//  hello
//
//  Created by Kákonyi Roland on 2014.04.09..
//  Copyright (c) 2014 wcs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlainLogger.h"
#import "PlayerServlet.h"

int main(int argc, const char *argv[]) {
	NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init];
	NSString *response = @"0";

	if (argc > 1 && strlen(argv[1]) > 0) {
		NSString *request = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
		response = [[[[PlayerServlet alloc] init] autorelease] doPost:request];
	}

	[PlainLogger log:@"%s", [response UTF8String]];
	[myPool drain];
	return 0;
}

