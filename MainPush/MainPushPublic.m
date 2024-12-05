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
    // бла бла бла какой то код инициализации P SDK
    // ....
    // Проверяем что пользователь из Московии и хочет пользоваться Гамаржобой
    // И тут мы включаемся и инициализируем Апп Метрику в нашей гамаржобе
    if ([MainPushPublic.sharedInstance.modulesDelegate respondsToSelector:@selector(initializePlugin)]) {
        [MainPushPublic.sharedInstance.modulesDelegate initializePlugin];
    } else {
        NSLog(@"[SDK A] modulesDelegate does not respond to initializePlugin");
    }
}

- (void)userId:(nonnull NSString *)newUserId {
    if ([[MainPushPublic sharedInstance].modulesDelegate respondsToSelector:@selector(performUserId:)]) {
        [[MainPushPublic sharedInstance].modulesDelegate performUserId:newUserId];
    }
}

@end
