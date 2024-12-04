//
//  MainPushPublic.h
//  MainPush
//
//  Created by André Kis on 04.12.24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PluginProtocol <NSObject>

- (void)initializePlugin;
- (void)performAction;

@end

@interface MainPushPublic : NSObject

+ (instancetype)sharedInstance;

- (void)initialize;

@property (nonatomic, weak) NSObject<PluginProtocol> * _Nullable modulesDelegate;

@end

NS_ASSUME_NONNULL_END
