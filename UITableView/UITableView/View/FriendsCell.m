//
//  FriendsCell.m
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import "FriendsCell.h"
#import "FriendsFrame.h"
#import "FriendsView.h"
@interface FriendsCell()
@property(nonatomic,weak)FriendsView *friendsView;

@end

@implementation FriendsCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setUpFriendsView];
    }
    return self;
}


+ (instancetype)friendCellWithTabelView:(UITableView *)tableView{
    static NSString *ID = @"cell";
    FriendsCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:ID];
    }
    return cell;
}

- (void)setUpFriendsView{
    FriendsView *fView = [[FriendsView alloc]init];
    [self.contentView addSubview:fView];
    self.friendsView = fView;
}

- (void)setFriendsFrame:(FriendsFrame *)friendsFrame{
    _friendsFrame = friendsFrame;
    self.friendsView.friendsFrame = friendsFrame;
}

@end
