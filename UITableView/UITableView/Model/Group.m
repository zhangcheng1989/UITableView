//
//  Group.m
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import "Group.h"
#import "Friends.h"
@implementation Group

- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self == [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        NSMutableArray *arrM = [NSMutableArray array];
        for (NSDictionary *dict  in self.friends) {
            Friends *friend = [Friends friendsWithDict:dict];
            [arrM addObject:friend];
        }
        self.friends = arrM;
        
    }
    return self;
}

+ (instancetype)groupWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}

@end
