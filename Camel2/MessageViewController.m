//
//  MessageViewController.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/25.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (id)init {
    if ([super init] != nil) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"消息" image:[UIImage imageNamed:@"1.png"] tag:101];
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


@end
