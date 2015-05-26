//
//  HeaderModule.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/27.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "HeaderModule.h"

@interface HeaderModule ()
@property(nonatomic, strong) UIButton *openDrawerButton;
@end

@implementation HeaderModule

- (id)init {
    // Initialize and add the openDrawerButton
    UIImage *hamburger = [UIImage imageNamed:@"cute_head_image.jpg"];
    
    self.openDrawerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.openDrawerButton.frame = CGRectMake(10.0f, 20.0f, 44.0f, 44.0f);
    [self.openDrawerButton setImage:hamburger forState:UIControlStateNormal];
    [self.openDrawerButton addTarget:self action:@selector(openDrawer:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.openDrawerButton];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Open drawer button

- (void)openDrawer:(id)sender
{
    [self.drawer open];
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


@end
