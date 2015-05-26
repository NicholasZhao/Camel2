//
//  HeaderModule.h
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/27.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface HeaderModule : UIViewController<ICSDrawerControllerChild, ICSDrawerControllerPresenting>

@property(nonatomic, weak) ICSDrawerController *drawer;
@end
