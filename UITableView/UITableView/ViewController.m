//
//  ViewController.m
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import "ViewController.h"
#import "Group.h"
#import "Friends.h"
#import "FriendsFrame.h"
#import "FriendsCell.h"
#import "UIView+Frame.h"
#import "FriendsHeaderView.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,FriendsHeaderViewDelegate>
@property(nonatomic,strong)NSMutableArray *arrM;
@property(nonatomic,strong)NSMutableArray *arryFrame;
@property(nonatomic,weak)UITableView *tableView;
@end

@implementation ViewController

- (NSMutableArray *)arryFrame{
    if (_arryFrame == nil) {
        _arryFrame = [NSMutableArray array];
    }
    return _arryFrame;
}

- (NSMutableArray *)arrM{
    if (_arrM == nil) {
        NSString *filePath = [[NSBundle mainBundle]pathForResource:@"friends.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:filePath];
        NSMutableArray *groups = [NSMutableArray array];
        for (NSDictionary *dict in array) {
            Group *group = [Group groupWithDict:dict];
            
            [groups addObject:group];
           
        }
        _arrM = groups;
    }
    return _arrM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    tableView.delegate =self;
    [self.view addSubview:tableView];
    self.tableView = tableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return  self.arrM.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    Group *group = self.arrM[section];
    if (group.isOpen) {
        return group.friends.count;
    }
    return 0;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FriendsCell *cell = [FriendsCell friendCellWithTabelView:tableView];
    Group *group = self.arrM[indexPath.section];
    Friends *friends = group.friends[indexPath.row];
    FriendsFrame *friendsFrame = [[FriendsFrame alloc]init];
    friendsFrame.friends = friends;
    
    cell.friendsFrame = friendsFrame;

    return cell;
}


//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    Group *grou = self.arrM[section];
//    return grou.name;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    Group *group = self.arrM[indexPath.section];
    Friends *friends = group.friends[indexPath.row];
    FriendsFrame *friendsFrame = [[FriendsFrame alloc]init];
    friendsFrame.friends = friends;
    
    return friendsFrame.cellHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    FriendsHeaderView *headerView = [[FriendsHeaderView alloc]init];
    headerView.delegate = self;
    Group *g = self.arrM[section];
    headerView.group = g;
    return headerView;
}

- (void)headerViewDidClickHeaderView:(FriendsHeaderView *)headerView{
    [self.tableView reloadData];
}

#pragma mark -- 不设置高度第0组显示无法显示
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30;
}



@end
