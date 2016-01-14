//
//  FriendsFrame.h
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Friends.h"
@interface FriendsFrame : NSObject

@property(nonatomic,assign)CGRect iconV;
@property(nonatomic,assign)CGRect nameV;
@property(nonatomic,assign)CGRect modelV;
@property(nonatomic,strong)Friends *friends;
@property(nonatomic,assign)CGFloat cellHeight;
@end
