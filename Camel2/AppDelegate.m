//
//  AppDelegate.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/24.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "AppDelegate.h"
#import "ICSDrawerController.h"
#import "MenuViewController.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor blackColor];
    
//    NSArray *colors = @[[UIColor colorWithRed:237.0f/255.0f green:195.0f/255.0f blue:0.0f/255.0f alpha:1.0f],
//                        [UIColor colorWithRed:237.0f/255.0f green:147.0f/255.0f blue:0.0f/255.0f alpha:1.0f],
//                        [UIColor colorWithRed:237.0f/255.0f green:9.0f/255.0f blue:0.0f/255.0f alpha:1.0f]
//                        ];
    
    NSArray *menuItems = @[@"企业列表", @"意见反馈", @"系统设置", @"关于", @"帮助", @"退出登录"];
    
    MenuViewController *left = [[MenuViewController alloc] initWithItems:menuItems];
    MainViewController *center = [[MainViewController alloc] init];
    
    left.view.backgroundColor = [UIColor colorWithRed:40.0f/255.0f green:40.0f/255.0f blue:80.0f/255.0f alpha:1.0f];
    center.view.backgroundColor = [UIColor whiteColor];
    
    ICSDrawerController *drawer = [[ICSDrawerController alloc] initWithLeftViewController:left
                                                                     centerViewController:center];
    self.window.rootViewController = drawer;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
