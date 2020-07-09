//
//  BViewController.m
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import "BViewController.h"
#import "ModuleAProtol.h"
#import "KRAop.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getData];
    // Do any additional setup after loading the view.
}

- (void)getData {
    id<ModuleAProtol> pro = KRGetModule(ModuleAProtol);
   NSLog(@"你的名字:%@",[pro name]) ;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
