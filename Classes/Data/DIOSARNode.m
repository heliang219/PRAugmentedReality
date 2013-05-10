//
//  DIOSARNode.m
//  PrometAR
//
//  Created by Geoffroy Lesage on 4/29/13.
//  Copyright (c) 2013 Promet Solutions Inc. All rights reserved.
//

#import "DIOSARNode.h"
#import "DIOSSession.h"
#import "AFHTTPRequestOperation.h"

#import "ARSettings.h"

@implementation DIOSARNode

+ (void)getUpdatedARNodes:(NSString *)timestamp
                  success:(void (^)(AFHTTPRequestOperation *operation, id responseObject)) success
                  failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error)) failure {
    
    NSString *path = [NSString stringWithFormat:@"%@/%@/%@", Endpoint, BaseARNode, timestamp];
    
    [[DIOSSession sharedSession] getPath:path
                               parameters:nil
                                  success:success
                                  failure:failure];
}

@end
