//
//  CTMediator+Account.h
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/10.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (Account)
- (UIViewController *)getLoginViewController:(NSDictionary *)params;
@end

NS_ASSUME_NONNULL_END
