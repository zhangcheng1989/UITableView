//
//  FriendsFrame.m
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import "FriendsFrame.h"

#define cellSpacing 20

@implementation FriendsFrame


- (void)setFriends:(Friends *)friends{
    _friends = friends;
    
    [self setUpView];
}

- (void)setUpView{
    
    CGFloat iconX = 10;
    CGFloat iconY = 10;
    CGFloat iconW = 60;
    CGFloat iconH = 40;
    self.iconV = CGRectMake(iconX, iconY, iconW, iconH);
    
    CGFloat nameX = iconW+cellSpacing;
    CGFloat nameY = iconX;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    dict[NSForegroundColorAttributeName] = [UIColor redColor];
    CGSize nameSize = [_friends.name boundingRectWithSize:CGSizeMake(120, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:NULL].size;
    self.nameV = (CGRect){{nameX,nameY},nameSize};
    
    CGFloat modelX = CGRectGetMaxX(self.nameV)+cellSpacing;
    CGFloat modelY = CGRectGetMaxY(self.iconV)/2;
    NSMutableDictionary *modelDict = [NSMutableDictionary dictionary];
    modelDict[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    modelDict[NSForegroundColorAttributeName] = [UIColor redColor];
    CGSize modelSize = [_friends.model boundingRectWithSize:CGSizeMake(100, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:modelDict context:nil].size;
    self.modelV = (CGRect){{modelX,modelY},modelSize};
    
    self.cellHeight = CGRectGetMaxY(self.iconV)+cellSpacing;
}

@end
