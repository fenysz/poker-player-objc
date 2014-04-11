//
//  ServletTest.m
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//

#import "BaseTest.h"
#import "Servlet.h"

@interface ServletTest : BaseTest
@end

@implementation ServletTest

- (void)setUp {
	[super setUp];
}

- (void)tearDown {
	[super tearDown];
}

- (void)testVersionString {
	XCTAssertEqualObjects(@"Default Objc folding player", [self.object dispatch:@"version"]);
}

@end
