//
//  MenuViewController.h
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/24.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICSDrawerController.h"
#import "CompanyListViewController.h"

@interface MenuViewController : UITableViewController<ICSDrawerControllerChild, ICSDrawerControllerPresenting>

@property(nonatomic, weak) ICSDrawerController *drawer;

- (id)initWithItems:(NSArray *)menuItems;

@end
