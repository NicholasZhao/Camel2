//
//  FunctionListModule.h
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/25.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AttendanceListViewController.h"
#import "AVCaptureViewController.h"

@interface FunctionListModule : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSString * identifier;
}
@end
