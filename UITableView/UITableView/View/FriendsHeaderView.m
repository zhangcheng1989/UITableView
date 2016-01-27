//
//  FriendsHeaderView.m
//  UITableView
//
//  Created by iOS on 16/1/14.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import "FriendsHeaderView.h"
#import "Group.h"
@interface FriendsHeaderView()
@property(nonatomic,weak)UIButton *btn;
@end

@implementation FriendsHeaderView


+ (instancetype)headerWithTableView:(UITableView *)tableView{
    static NSString *ID = @"header";
    
    FriendsHeaderView *headerVoew = [tableView dequeueReusableHeaderFooterViewWithIdentifier:ID];
    if (headerVoew == nil) {
        headerVoew = [[self alloc]initWithReuseIdentifier:ID];
    }
    return headerVoew;
}

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self == [super initWithReuseIdentifier:reuseIdentifier]) {
        //这里可以先封装好UIButton
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor orangeColor]];
        [btn addTarget:self action:@selector(btnOnclick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        self.btn = btn;
    }
    return self;
}

- (void)btnOnclick:(UIButton *)btn{
    self.group.open = !self.group.open;
    
    if ([self.delegate respondsToSelector:@selector(headerViewDidClickHeaderView:)]) {
        [self.delegate headerViewDidClickHeaderView:self];
    }
}


- (void)layoutSubviews{
    [super layoutSubviews];
    self.btn.frame = self.bounds;
}

#pragma mark --当一个控件被添加到其它视图上的时候会调用以下方法
- (void)didMoveToSuperview{
//    if (self.group.open) {
//         TODO :: 如果是图片的的话在这里设置箭头图片的的位置是向上还是向下  
//    }
}

- (void)setGroup:(Group *)group{
    _group = group;
    
    [self.btn setTitle:group.name forState:UIControlStateNormal];
}
@end
