//
//  AModel.m
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import "AModel.h"

@implementation AModel
- (instancetype)initWtihName:(NSString *)name age:(NSInteger)age {
    if (self == [super init]) {
        self.age = age;
        self.name = name;
    }
    return self;
}
@end
