//
//  ContactViewController.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/25.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "ContactViewController.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (id)init {
    if ([super init] != nil) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"通讯录" image:[UIImage imageNamed:@"1.png"] tag:101];
        self.tabBarItem = item;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
