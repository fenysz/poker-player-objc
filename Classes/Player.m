//
//  Player.m
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.



#import "Player.h"


@implementation Player {

}

+ (NSString *)versionString {
	return @"Default Objc folding player";
}

- (void)showDown:(NSDictionary *)dictionary {

}

- (int)betRequest:(NSDictionary *)gamestate {
	return 0;
}

- (void)dealloc {
#if DEBUG
	NSLog(@"dealloc %@", NSStringFromClass(self.class));
#endif
	[super dealloc];
}
@end