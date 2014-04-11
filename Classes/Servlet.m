//
//  Servlet.m
//  Request handler object
//
//  Created by Kákonyi Roland on 2014.04.10..

#import "Servlet.h"
#import "NSDictionary+JSON.h"
#import "Player.h"

@implementation Servlet {

}

- (NSString *)dispatch:(NSString *)action {
	NSString *response = @"";

	if ([action isEqualToString:@"version"]) {
		return Player.versionString;
	}
	else if ([action isEqualToString:@"bet_request"]) {
		NSDictionary *requestJSON = [self requestJSON];
		return [NSString stringWithFormat:@"%d", [[[[Player alloc] init] autorelease] betRequest:requestJSON]];
	}
	else if ([action isEqualToString:@"showdown"]) {
		NSDictionary *requestJSON = [self requestJSON];
		[[[[Player alloc] init] autorelease] showDown:requestJSON];
	}

	return response;
}

- (NSDictionary *)requestJSON {
	NSMutableString *inputString = [self readFromStdIn];
	NSDictionary *requestJSON = [NSDictionary fromJsonString:inputString];
	return requestJSON;
}

- (NSMutableString *)readFromStdIn {
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
	return inputString;
}

- (void)dealloc {
#if DEBUG
	NSLog(@"dealloc %@", NSStringFromClass(self.class));
#endif
	[super dealloc];
}

@end
