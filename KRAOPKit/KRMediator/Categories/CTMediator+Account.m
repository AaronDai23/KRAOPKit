//
//  CTMediator+Account.m
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/10.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import "CTMediator+Account.h"
NSString *const kGetLoginVCTarget = @"Login";
NSString *const kGetLoginVCAction = @"getLoginViewController";

@implementation CTMediator (Account)
- (UIViewController *)getLoginViewController:(NSDictionary *)params {
    return [self performTarget:kGetLoginVCTarget action:kGetLoginVCAction params:params shouldCacheTarget:NO];
}
@end
