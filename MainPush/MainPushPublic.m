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

- (void)initialize {
    if ([MainPushPublic.sharedInstance.modulesDelegate respondsToSelector:@selector(initializePlugin)]) {
        [MainPushPublic.sharedInstance.modulesDelegate initializePlugin];
    }
}

@end
