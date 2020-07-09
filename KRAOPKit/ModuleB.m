//
//  ModuleB.m
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import "ModuleB.h"
#import "ModuleBProtol.h"
#import "KRAop.h"

@implementation ModuleB

+ (void)load {
    [KRAop registerProtocol:@protocol(ModuleBProtol) withModule:self.class ];
}


- (void)setup {
    NSLog(@"dfdfdsf");
}

+ (nonnull instancetype)sharedInstance {
    static ModuleB *moduleb = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        moduleb = [[ModuleB alloc] init];
    });
    return moduleb;
}

- (CGFloat)getHeight {
    return 14.5;
}

- (NSInteger)getWeight {
    return 187.5;
}

@end
