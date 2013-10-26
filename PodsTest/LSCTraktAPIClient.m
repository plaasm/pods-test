//
//  LSCTraktAPIClient.m
//  PodsTest
//
//  Created by Lunescope on 17Oct13.
//  Copyright (c) 2013 Lunescope. All rights reserved.
//

#import "LSCTraktAPIClient.h"
#import <AFJSONRequestOperation.h>

NSString * const kTraktAPIKey = @"fc3df235908f83107cedd7914950d7a0";
NSString * const kTraktBaseURLString = @"http://api.trakt.tv";

@implementation LSCTraktAPIClient

+(LSCTraktAPIClient *)sharedClient {
    static LSCTraktAPIClient *_sharedClient = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedClient = [[self alloc] initWithBaseURL:[NSURL URLWithString:kTraktBaseURLString]];
    });
    return _sharedClient;
    
}

-(id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
     // Accept HTTP Header; see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1
    [self setDefaultHeader:@"Accept" value:@"application/json"];
    self.parameterEncoding = AFJSONParameterEncoding;
    return self;
}

@end
