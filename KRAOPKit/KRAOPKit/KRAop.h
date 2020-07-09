//
//  KRAop.h
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KRAopKitProtocol.h"

NS_ASSUME_NONNULL_BEGIN

#define KRRegister(aProtol) [KRAop registerProtocol:@protocol(aProtol) withModule:self.class]
#define KRGetModule(aProtol) [KRAop moduleByProtocol:@protocol(aProtol)]
#define KRLog(msg)  NSLog(@"[KRAop]: %@",(msg))

@interface KRAop : NSObject
+ (instancetype)sharedInstance;
+ (void)setupAllModules;
+ (void)registerProtocol:(Protocol *)protocol withModule:(Class<KRAopKitProtocol> )module;
+ (id<KRAopKitProtocol>)moduleByProtocol:(Protocol *)protocol;
@end

NS_ASSUME_NONNULL_END
