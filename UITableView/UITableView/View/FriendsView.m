//
//  FriendsView.m
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import "FriendsView.h"
#import "FriendsFrame.h"
#import "Friends.h"
@interface FriendsView()
@property(nonatomic,weak)UIImageView *iconV;
@property(nonatomic,weak)UILabel *nameV;
@property(nonatomic,weak)UILabel *modelV;
@end

@implementation FriendsView


- (instancetype)initWithFrame:(CGRect)frame{
    if (self == [super initWithFrame:frame]) {
        [self setUpView];
    }
    return self;
}

- (void)setUpView{
    UIImageView *iconV = [UIImageView new];
    [self addSubview:iconV];
    self.iconV = iconV;
    
    UILabel *nameV = [UILabel new];
    nameV.font = [UIFont systemFontOfSize:14.0];
    nameV.textColor = [UIColor redColor];
    [self addSubview:nameV];
    self.nameV = nameV;
    
    UILabel *modelV = [UILabel new];
    modelV.font = [UIFont systemFontOfSize:14.0];
    modelV.textColor = [UIColor redColor];
    [self addSubview:modelV];
    self.modelV = modelV;
}

- (void)setFriendsFrame:(FriendsFrame *)friendsFrame{
    _friendsFrame = friendsFrame;
    Friends *friends = friendsFrame.friends;
    
    self.iconV.frame = friendsFrame.iconV;
    self.iconV.image = [UIImage imageNamed:friends.icon];
    
    self.nameV.frame = friendsFrame.nameV;
    self.nameV.text = friends.name;
    
    self.modelV.frame = friendsFrame.modelV;
    self.modelV.text = friends.model;
    
}

@end
