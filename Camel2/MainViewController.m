//
//  MainViewController.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/24.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property(nonatomic, strong) UIButton *openDrawerButton;
@property(nonatomic, strong) UILabel *headerText;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor clearColor];
    
    UITabBarController *switchTabBar = [[UITabBarController alloc] init];
    MessageViewController *messageVC = [[MessageViewController alloc] init];
    DeskViewController *deskVC = [[DeskViewController alloc] init];
    ContactViewController *contactVC = [[ContactViewController alloc] init];
    
    UINavigationController *nav1, *nav2, *nav3;
    nav1 = [[UINavigationController alloc] initWithRootViewController:messageVC];
    nav2 = [[UINavigationController alloc] initWithRootViewController:deskVC];
    nav3 = [[UINavigationController alloc] initWithRootViewController:contactVC];
    
    NSArray *switchViewArray = [NSArray arrayWithObjects:nav1,nav2,nav3,nil];
    switchTabBar.viewControllers = switchViewArray;
    switchTabBar.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview: switchTabBar.view];
    [self addChildViewController: switchTabBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ICSDrawerControllerPresenting

- (void)drawerControllerWillOpen:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = NO;
}

- (void)drawerControllerDidClose:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = YES;
}

#pragma mark - Open drawer button

- (void)openDrawer:(id)sender
{
    [self.drawer open];
}

@end
