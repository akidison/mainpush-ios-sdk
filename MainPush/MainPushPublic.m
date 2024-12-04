//
//  MainPushPublic.m
//  MainPush
//
//  Created by André Kis on 04.12.24.
//

#import "MainPushPublic.h"

@implementation MainPushPublic

+ (instancetype)sharedInstance {
    static MainPushPublic *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

@end
