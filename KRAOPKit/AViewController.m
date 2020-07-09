//
//  AViewController.m
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.btn];
    [self.btn addTarget:self action:@selector(action:) forControlEvents:(UIControlEventTouchUpInside)];
    // Do any additional setup after loading the view.
}

- (void)action:(UIButton *)btn {
    BViewController *bvc = [[BViewController alloc] init];
    [self.navigationController pushViewController:bvc animated:YES];
}

- (UIButton *)btn {
    if (!_btn) {
        _btn = [[UIButton alloc] init];
        _btn.frame = CGRectMake(100, 100, 100, 50);
        _btn.backgroundColor = UIColor.redColor;
    }
    return _btn;
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
