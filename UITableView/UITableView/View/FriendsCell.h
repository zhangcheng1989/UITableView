//
//  FriendsCell.h
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FriendsFrame;
@interface FriendsCell : UITableViewCell


+ (instancetype)friendCellWithTabelView:(UITableView *)tableView;

@property(nonatomic,strong)FriendsFrame *friendsFrame;

@end
