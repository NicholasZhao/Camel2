//
//  MainViewController.h
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/24.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICSDrawerController.h"
#import "MessageViewController.h"
#import "DeskViewController.h"
#import "ContactViewController.h"

@interface MainViewController : UIViewController<ICSDrawerControllerChild, ICSDrawerControllerPresenting>

@property(nonatomic, weak) ICSDrawerController *drawer;

@end
