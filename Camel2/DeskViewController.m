//
//  DeskViewController.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/25.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "DeskViewController.h"

@interface DeskViewController ()

@end

@implementation DeskViewController

- (id)init {
    if ([super init] != nil) {
        self.title = @"一卡通测试企业";
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"工作台" image:[UIImage imageNamed:@"1.png"] tag:101];
        self.tabBarItem = item;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FunctionListModule *functions = [[FunctionListModule alloc]init];
    [self.view addSubview: functions.view];
    [self addChildViewController: functions];
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)selectLeftAction:(id)sender{
    MainViewController *mainVC = (MainViewController *)self.parentViewController.parentViewController.parentViewController;
    [mainVC.drawer open];
}

@end
