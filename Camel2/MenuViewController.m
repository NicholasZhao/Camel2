//
//  MenuViewController.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/24.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "MenuViewController.h"

static NSString * const kICSColorsViewControllerCellReuseId = @"kICSColorsViewControllerCellReuseId";

@interface MenuViewController ()

@property(nonatomic, strong) NSArray *menuItems;
@property(nonatomic, assign) NSInteger previousRow;

@end

@implementation MenuViewController

- (id)initWithItems:(NSArray *)menuItems
{
    NSParameterAssert(menuItems);
    
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        _menuItems = menuItems;
    }
    return self;
}

#pragma mark - Managing the view

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kICSColorsViewControllerCellReuseId];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSParameterAssert(self.menuItems);
    return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSParameterAssert(self.menuItems);
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kICSColorsViewControllerCellReuseId
                                                            forIndexPath:indexPath];
    
//    NSString *menuImage = [NSString stringWithFormat:@"%@%d", @"menu_", 0];
    cell.imageView.image = [UIImage imageNamed: @"hamburg.png"];
    cell.textLabel.text = self.menuItems[indexPath.row];
//    cell.textLabel.textColor = [UIColor whiteColor];
//    cell.backgroundColor = self.menuItems[indexPath.row];
    
    return cell;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (indexPath.row == self.previousRow) {
//        // Close the drawer without no further actions on the center view controller
//        [self.drawer close];
//    }
//    else {
        // Reload the current center view controller and update its background color
        typeof(self) __weak weakSelf = self;
        [self.drawer reloadCenterViewControllerUsingBlock:^(){
            NSParameterAssert(weakSelf.menuItems);
            
            if (indexPath.row == 0) {
                NSLog(@"点击企业列表");
                
                CompanyListViewController *companyListVC = [[CompanyListViewController alloc]init];
                [weakSelf.drawer.centerViewController.view addSubview:companyListVC.view];
//                [self.navigationController pushViewController:companyListVC animated:YES];
                
                //        [self.sideMenuViewController setMainViewController: [[UINavigationController alloc] initWithRootViewController:moreView] animated:YES closeMenu:YES];
                
                
            } else if (indexPath.row == 1) {
                NSLog(@"clicking row 1");
            } else if (indexPath.row == 2) {
                NSLog(@"clicking row 2");
            }
            
            //weakSelf.drawer.centerViewController.view.backgroundColor = weakSelf.menuItems[indexPath.row];
        }];
        
        //        // Replace the current center view controller with a new one
        //        ICSPlainColorViewController *center = [[ICSPlainColorViewController alloc] init];
        //        center.view.backgroundColor = [UIColor redColor];
        //        [self.drawer replaceCenterViewControllerWithViewController:center];
//    }
    self.previousRow = indexPath.row;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}

#pragma mark - ICSDrawerControllerPresenting

- (void)drawerControllerWillOpen:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = NO;
}

- (void)drawerControllerDidOpen:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = YES;
}

- (void)drawerControllerWillClose:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = NO;
}

- (void)drawerControllerDidClose:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = YES;
}

@end