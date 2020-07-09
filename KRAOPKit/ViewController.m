//
//  ViewController.m
//  KRAOPKit
//
//  Created by 戴培琼 on 2020/7/6.
//  Copyright © 2020 戴培琼. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.view addSubview:self.btn];
    self.view.backgroundColor = UIColor.blueColor;
    [self.btn addTarget:self action:@selector(action:) forControlEvents:(UIControlEventTouchUpInside)];

    // Do any additional setup after loading the view.
}


- (void)action:(UIButton *)btn {
    AViewController *bvc = [[AViewController alloc] init];
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



@end
