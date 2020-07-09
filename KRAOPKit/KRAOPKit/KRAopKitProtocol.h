//
//  KRAopKitProtocol.h
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol KRAopKitProtocol <NSObject>
+ (instancetype)sharedInstance;
- (void)setup;
@end

NS_ASSUME_NONNULL_END
