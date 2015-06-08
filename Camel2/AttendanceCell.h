//
//  AttendanceCell.h
//  Camel2
//
//  Created by Nicholas Zhao on 15/6/8.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AttendanceCell : UITableViewCell
{
    UILabel *_label1;
    UILabel *_label2;
}


- (void)setLabel1Text:(NSString *)text1
           label2Text:(NSString *)text2;
@end
