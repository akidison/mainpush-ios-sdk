//
//  MainPushPublic.h
//  MainPush
//
//  Created by André Kis on 04.12.24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Новый протокол для Гамаржоп СДК
@protocol PluginProtocol <NSObject>

- (void)initializePlugin;
- (void)performUserId:(NSString *)newUserId;
- (void)performAction;

@end

@interface MainPushPublic : NSObject

+ (instancetype)sharedInstance;

- (void)initialize; // типа инициализация Pushwoosh SDK

- (void)userId:(NSString *)newUserId; // типа метод setUserId из Pushwoosh SDK

@property (nonatomic, weak) NSObject<PluginProtocol> * _Nullable modulesDelegate;

@end

NS_ASSUME_NONNULL_END
