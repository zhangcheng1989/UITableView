//
//  Friends.m
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import "Friends.h"
@implementation Friends


- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self == [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)friendsWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}

@end
