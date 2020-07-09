//
//  ModuleA.h
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KRAopKitProtocol.h"
#import "ModuleAProtol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ModuleA : NSObject<KRAopKitProtocol, ModuleAProtol>

@end

NS_ASSUME_NONNULL_END
