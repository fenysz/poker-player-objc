//
//  Player.h
//  Player controller
//
//  Created by Kákonyi Roland on 2014.04.10..

#import <Foundation/Foundation.h>

@interface Player : NSObject

+ (NSString *)versionString;
- (void)showDown:(NSDictionary *)gamestate;
- (int)betRequest:(NSDictionary *)gamestate;
@end
