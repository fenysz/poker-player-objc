//
//  BaseTest.m
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
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
		NSString *classString = NSStringFromClass(self.class);
		NSRange lastTestStringRange = [classString rangeOfString:@"Test" options:NSBackwardsSearch];
		testClass = NSClassFromString([classString stringByReplacingCharactersInRange:lastTestStringRange withString:@""]);
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
