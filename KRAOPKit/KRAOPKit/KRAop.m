//
//  KRAop.m
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import "KRAop.h"
#import <objc/runtime.h>

#define KRInstance KRAop.sharedInstance

@interface KRAop()
// 包含key = protocol value = module class
@property (nonatomic, strong) NSMutableDictionary *moduleDict;
@end

@implementation KRAop
+ (instancetype)sharedInstance {
    static KRAop *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[KRAop alloc] init];
        instance.moduleDict = [[NSMutableDictionary alloc] init];
    });
    return instance;
}


+ (void)registerProtocol:(Protocol *)protocol withModule:(Class<KRAopKitProtocol> )module {
    NSString *protocolStr = NSStringFromProtocol(protocol);
    NSString *classStr = NSStringFromClass(module);
    Class class = module;
    if (classStr.length == 0) {
        KRLog(@"Module name error!");
    }else {
        [KRInstance.moduleDict setObject:class forKey:protocolStr];
    }
}

+ (id<KRAopKitProtocol>)moduleByProtocol:(Protocol *)protocol {
    NSString *protolStr = NSStringFromProtocol(protocol);
    Class class = KRInstance.moduleDict[protolStr];
    if (protolStr.length == 0) {
        return nil;
    }else if (class != nil && ![class conformsToProtocol:protocol]) {
        return nil;
    }else {
        @try {
            id instance = [class sharedInstance];
            return instance;
        } @catch (NSException *exception) {
            KRLog(exception);
        }
    }
    return nil;
}

+ (void)setupAllModules {
   NSArray *modules =  KRInstance.moduleDict.allValues;
    for (Class<KRAopKitProtocol> class in modules) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [[class sharedInstance] setup];
        });
    }
   
}
@end
