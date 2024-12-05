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
    if ([self.modulesDelegate respondsToSelector:@selector(initializePlugin)]) {
        NSLog(@"[SDK A] Calling initializePlugin on modulesDelegate");
        [self.modulesDelegate initializePlugin];
    } else {
        NSLog(@"[SDK A] modulesDelegate does not respond to initializePlugin");
    }
}

@end
