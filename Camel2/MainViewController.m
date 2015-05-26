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

    // Add the tabbar
    self.title = @"一卡通测试企业";
    //self.view = [[UITabBar alloc] init];
    self.view.backgroundColor = [UIColor clearColor];
    
    
    UITabBarController *switchTabBar = [[UITabBarController alloc] init];
    //switchTabBar.delegate = self;
    MessageViewController *messageVC = [[MessageViewController alloc] init];
    DeskViewController *deskVC = [[DeskViewController alloc] init];
    ContactViewController *contactVC = [[ContactViewController alloc] init];
    
    NSArray *switchViewArray = [NSArray arrayWithObjects:messageVC,deskVC,contactVC,nil];
    switchTabBar.viewControllers = switchViewArray;
    switchTabBar.view.frame = CGRectMake(0, 75, self.view.frame.size.width, self.view.frame.size.height - 75);
    [self.view addSubview: switchTabBar.view];
    [self addChildViewController: switchTabBar];
    
    // Initialize and add the openDrawerButton
    UIImage *hamburger = [UIImage imageNamed:@"cute_head_image.jpg"];
    self.openDrawerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.openDrawerButton.frame = CGRectMake(10.0f, 20.0f, 44.0f, 44.0f);
    [self.openDrawerButton setImage:hamburger forState:UIControlStateNormal];
    [self.openDrawerButton addTarget:self action:@selector(openDrawer:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: self.openDrawerButton];
    
    // Add the header text
    self.headerText.frame = CGRectMake(100, 25, 200, 40);
    self.headerText.text = @"测试企业";
    self.headerText.textColor = [UIColor blackColor];
    [self.view addSubview: self.headerText];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Configuring the view’s layout behavior

- (BOOL)prefersStatusBarHidden
{
    return NO;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
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
