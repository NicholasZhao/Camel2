//
//  AttendanceListViewController.m
//  Camel2
//
//  Created by Nicholas on 15/5/25.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "AttendanceListViewController.h"

static NSString * const kAttendanceViewControllerCellReuseId = @"kAttendanceViewControllerCellReuseId";

@interface AttendanceListViewController ()

@property(nonatomic, strong) NSArray *attendanceItems;

@end

@implementation AttendanceListViewController

- (id)init {
    if ([super init] != nil) {
        self.title = @"考勤列表";
    }
    return self;
}

#pragma mark - Managing the view

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kAttendanceViewControllerCellReuseId];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    self.attendanceItems = @[@"aaaaa", @"bbbbb", @"ccccc", @"ddddd", @"eeeee", @"fffff"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.attendanceItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kAttendanceViewControllerCellReuseId
//                                                            forIndexPath:indexPath];
//    
//    //    NSString *menuImage = [NSString stringWithFormat:@"%@%d", @"menu_", 0];
//    cell.imageView.image = [UIImage imageNamed: @"hamburg.png"];
//    cell.textLabel.text = self.attendanceItems[indexPath.row];
//    //    cell.textLabel.textColor = [UIColor whiteColor];
//    //    cell.backgroundColor = self.menuItems[indexPath.row];
//    
    static NSString *identifier = @"cell";
    
    AttendanceCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[AttendanceCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    [cell setLabel1Text:@"222222222" label2Text:@"333333333"];
    
    return cell;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        NSLog(@"clicking row 0");
    } else if (indexPath.row == 1) {
        NSLog(@"clicking row 1");
    } else if (indexPath.row == 2) {
        NSLog(@"clicking row 2");
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}

@end
