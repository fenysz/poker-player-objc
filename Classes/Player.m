//
//  Player.m
//  Player controller
//
//  Created by Kákonyi Roland on 2014.04.10..

#import "Player.h"

static NSString *const kVersionString = @"Default Objc folding player";

@implementation Player {

}

+ (NSString *)versionString {
	return kVersionString;
}

- (void)showDown:(NSDictionary *)gamestate {

}

- (int)betRequest:(NSDictionary *)gamestate {
	return 0;
}

- (void)dealloc {
#if DEBUG
	NSLog(@"dealloc %@", NSStringFromClass(self.class));
#endif
}
@end
