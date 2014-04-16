//
//  main.m
//  Main function
//
//  Created by Kákonyi Roland on 2014.04.09..
//

#import <Foundation/Foundation.h>
#import "Classes/PlainLogger.h"
#import "Classes/Servlet.h"

int main(int argc, const char *argv[]) {
	@autoreleasepool {
		NSString *response = @"0";

		if (argc > 1 && strlen(argv[1]) > 0) {
			NSString *request = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
			response = [[[Servlet alloc] init] dispatch:request];
		}

		[PlainLogger log:@"%s", [response UTF8String]];
	}
	return 0;
}

