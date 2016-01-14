//
//  FriendsHeaderView.h
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Group,FriendsHeaderView;

@protocol FriendsHeaderViewDelegate <NSObject>

- (void)headerViewDidClickHeaderView:(FriendsHeaderView *)headerView;

@end

@interface FriendsHeaderView : UITableViewHeaderFooterView
@property(nonatomic,strong)Group *group;

+ (instancetype)headerWithTableView:(UITableView *)tableView;

@property(nonatomic,weak)id<FriendsHeaderViewDelegate> delegate;


@end
