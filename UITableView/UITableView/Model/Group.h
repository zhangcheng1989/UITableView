//
//  Group.h
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Group : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,strong)NSArray *friends;
@property(nonatomic,assign,getter = isOpen)BOOL open;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)groupWithDict:(NSDictionary *)dict;

@end
