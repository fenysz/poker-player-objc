//
//  BaseTest.m
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.
//

#import "BaseTest.h"

@implementation BaseTest

- (void)setUp {
	[super setUp];
	Class testClass = nil;
	if (self.className != nil && self.className.length > 0) {
		testClass = NSClassFromString(self.className);
	}

	if (testClass == nil) {
		testClass = NSClassFromString([NSStringFromClass(self.class) stringByReplacingOccurrencesOfString:@"Test" withString:@""]);
	}
	if (testClass == nil) {
		XCTFail(@"Set className!!!");
	}
	self.object = [[[testClass alloc] init] autorelease];
}

- (void)tearDown {
	[_object release];
	[super tearDown];
}

@end
