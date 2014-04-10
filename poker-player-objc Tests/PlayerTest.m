//
//  PlayerTest.m
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.
//

#import "BaseTest.h"
#import "Player.h"

@interface PlayerTest : BaseTest

@end

@implementation PlayerTest

- (void)setUp {
	[super setUp];
}

- (void)tearDown {
	[super tearDown];
}

- (void)testBetRequest {
	XCTAssertEqual(0, [self.object betRequest:nil]);
}

@end
