//
//  Friends.h
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Friends : NSObject
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)BOOL status;
@property(nonatomic,copy)NSString *model;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)friendsWithDict:(NSDictionary *)dict;
@end
