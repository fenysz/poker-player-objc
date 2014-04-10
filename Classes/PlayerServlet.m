//
//  PlayerServlet.m
//  poker-player-objc
//
//  Created by Kákonyi Roland on 2014.04.10..
//  Copyright (c) 2014 wcs. All rights reserved.



#import "PlayerServlet.h"
#import "NSDictionary+JSON.h"
#import "Player.h"


@implementation PlayerServlet {

}

- (NSString *)doPost:(NSString *)action {
	NSString *response = @"";


	if ([action isEqualToString:@"version"]) {
		return Player.versionString;
	}

	if ([action isEqualToString:@"bet_request"]) {
		NSDictionary *requestJSON = [self readGameState];
		return [NSString stringWithFormat:@"%d", [[[[Player alloc] init] autorelease] betRequest:requestJSON]];
	}

	if ([action isEqualToString:@"showdown"]) {
		NSDictionary *requestJSON = [self readGameState];
		[[[[Player alloc] init] autorelease] showDown:requestJSON];
	}

	return response;
}

- (NSDictionary *)readGameState {
	NSFileHandle *inputFile = [NSFileHandle fileHandleWithStandardInput];
	NSMutableString *inputString = [NSMutableString string];
	do {
		NSData *data = [inputFile availableData];
		if ([data length] == 0) {
			break;
		}
		NSMutableString *tmp = [[[NSMutableString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];
		[tmp replaceOccurrencesOfString:@"\n" withString:@" " options:0 range:NSMakeRange(0, [tmp length])];
		[inputString appendString:tmp];
	} while (false);

	NSDictionary *requestJSON = [NSDictionary fromJsonString:inputString];
	return requestJSON;
}

- (void)dealloc {
#if DEBUG
	NSLog(@"dealloc %@", NSStringFromClass(self.class));
#endif
	[super dealloc];
}

@end