//
//  Servlet.h
//  Request handler object
//
//  Created by Kákonyi Roland on 2014.04.10..

#import <Foundation/Foundation.h>

@interface Servlet : NSObject

- (NSString *)dispatch:(NSString *)action;
@end
