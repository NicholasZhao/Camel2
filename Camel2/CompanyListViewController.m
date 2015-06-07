//
//  CompanyListViewController.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/24.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "CompanyListViewController.h"

@interface CompanyListViewController ()

@end

@implementation CompanyListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIView *header = [[UIView alloc]initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, 60)];
    header.backgroundColor = [UIColor grayColor];
    
    UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(100, 20, 120, 36)];
    title.text = @"我的企业列表";
//    [title sizeToFit];
    [header addSubview:title];
    
    UIButton *closeButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width - 100, 20, 64, 36)];
    [closeButton addTarget:self action:@selector(dismissThisView:) forControlEvents:UIControlEventTouchUpInside];
    closeButton.backgroundColor = [UIColor greenColor];
//    [closeButton sizeToFit];
    [header addSubview:closeButton];
    
    [self.view addSubview: header];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissThisView:(id)sender {
//    [self dismissModalViewControllerAnimated:YES];
    NSLog(@"Dismiss self view.");
}

@end
