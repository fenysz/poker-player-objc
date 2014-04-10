//
//  BaseTest.h
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface BaseTest : XCTestCase

@property (nonatomic, copy) NSString *className;
@property (nonatomic, retain) id object;
@end
