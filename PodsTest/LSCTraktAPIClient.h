//
//  LSCTraktAPIClient.h
//  PodsTest
//
//  Created by Lunescope on 17Oct13.
//  Copyright (c) 2013 Lunescope. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFHTTPClient.h>

extern NSString * const kTraktAPIKey;
extern NSString * const kTraktBaseURLString;

@interface LSCTraktAPIClient : AFHTTPClient

+(LSCTraktAPIClient *)sharedClient;

@end






