//
//  FunctionListModule.m
//  Camel2
//
//  Created by Nicholas Zhao on 15/5/25.
//  Copyright (c) 2015年 Sahara Studio. All rights reserved.
//

#import "FunctionListModule.h"

@implementation FunctionListModule

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    identifier = @"cell";
    // 初始化layout
    UICollectionViewFlowLayout * flowLayout =[[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    UICollectionView * collectionView =[[UICollectionView alloc] initWithFrame:CGRectMake(0, 180, self.view.frame.size.width, 180)collectionViewLayout:flowLayout];
    collectionView.backgroundColor = [UIColor grayColor];
    //注册单元格
    [collectionView registerClass:[UICollectionViewCell class]forCellWithReuseIdentifier:identifier];
    //设置代理
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [self.view addSubview:collectionView];
}
#pragma mark - collectionView delegate
//设置分区
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
//每个分区上得元素个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 8;
}
//设置元素的的大小框
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    UIEdgeInsets top = {-30,30,30,30};
    return top;
}
//设置元素内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell =[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    [cell sizeToFit];
//    cell.backgroundColor =[UIColor greenColor];
    cell.backgroundColor = [UIColor colorWithRed:10.0f*(indexPath.item+1)/255.0f green:20.0f*(indexPath.item+1)/255.0f blue:30.0f*(indexPath.item+1)/255.0f alpha:1.0f];

    //赋值
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1];
    UILabel *label = (UILabel *)[cell viewWithTag:2];
//    NSString *imageName = [NSString stringWithFormat:@"%ld.JPG",(long)indexPath.row];
    imageView.image = [UIImage imageNamed:@"1.png"];
    label.text = @"xxxx";
    
    return cell;
}
//设置单元格宽度
//设置元素大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(50,50);
}
//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = (UICollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor grayColor];
    
    if (indexPath.item == 0) {
        NSLog(@"clicking on function 0.");
    } else if (indexPath.item == 1) {
        NSLog(@"clicking on function 1.");
    } else if (indexPath.item == 2) {
        NSLog(@"clicking on function 2.");
        
        AttendanceListViewController *attendanceListVC = [[AttendanceListViewController alloc] init];
        [self.navigationController pushViewController:attendanceListVC animated:TRUE];
        
    } else if (indexPath.item == 3) {
        NSLog(@"clicking on function 3.");
    } else if (indexPath.item == 4) {
        NSLog(@"clicking on function 4.");
    } else if (indexPath.item == 5) {
        NSLog(@"clicking on function 5.");
    }
}

@end
