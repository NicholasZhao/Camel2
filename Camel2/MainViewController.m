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

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize and add the openDrawerButton
    UIImage *hamburger = [UIImage imageNamed:@"hamburg.png"];
    NSParameterAssert(hamburger);
    
    self.openDrawerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.openDrawerButton.frame = CGRectMake(10.0f, 20.0f, 44.0f, 44.0f);
    [self.openDrawerButton setImage:hamburger forState:UIControlStateNormal];
    [self.openDrawerButton addTarget:self action:@selector(openDrawer:) forControlEvents:UIControlEventTouchUpInside];
    
    
    // Add the tabbar
    self.title = @"一卡通测试企业";
    //self.view = [[UITabBar alloc] init];
//    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UITabBarController *switchTabBar = [[UITabBarController alloc] init];
    //    switchTabBar.delegate = self;
    MessageViewController *messageVC = [[MessageViewController alloc] init];
    DeskViewController *deskVC = [[DeskViewController alloc] init];
    ContactViewController *contactVC = [[ContactViewController alloc] init];
    
    NSArray *switchViewArray = [NSArray arrayWithObjects:messageVC,deskVC,contactVC,nil];
    switchTabBar.viewControllers = switchViewArray;
    switchTabBar.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview: switchTabBar.view];
    [self addChildViewController: switchTabBar];
    [self.view addSubview:self.openDrawerButton];
    
    
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
