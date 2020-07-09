//
//  ModuleA.m
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import "ModuleA.h"
#import "KRAop.h"

@implementation ModuleA : NSObject
+ (void)load {
    KRRegister(ModuleAProtol);
}

- (void)setup {
    
}

+ (nonnull instancetype)sharedInstance { 
    static ModuleA *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (NSString *)age {
    return @"18";
}

- (NSString *)name {
    return @"Tom";
}

@end
