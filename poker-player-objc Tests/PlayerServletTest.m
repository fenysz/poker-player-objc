//
//  PlayerServletTest.m
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.
//

#import "BaseTest.h"
#import "PlayerServlet.h"

@interface PlayerServletTest : BaseTest
@end

@implementation PlayerServletTest

- (void)setUp {
	[super setUp];
}

- (void)tearDown {
	[super tearDown];
}

- (void)testVersionString {
	XCTAssertEqual(@"Default Objc folding player", [self.object doPost:@"version"]);
}

@end
