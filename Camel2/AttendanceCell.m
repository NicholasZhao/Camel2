//
//  AttendanceCell.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/6/8.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "AttendanceCell.h"

@implementation AttendanceCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 160, self.frame.size.height)];
        _label1.text = @"111111111";
        [self.contentView addSubview:_label1];
        
        _label2 = [[UILabel alloc] initWithFrame:CGRectMake(160, 0, 160, self.frame.size.height)];
        _label2.text = @"111111111";
        [self.contentView addSubview:_label2];
        
    }
    return self;
}

- (void)setLabel1Text:(NSString *)text1
           label2Text:(NSString *)text2
{
    _label1.text = text1;
    _label2.text = text2;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
