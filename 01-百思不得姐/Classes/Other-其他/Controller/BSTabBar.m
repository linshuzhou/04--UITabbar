//
//  BSTabBar.m
//  01-百思不得姐
//
//  Created by qf on 16/7/17.
//  Copyright © 2016年 qf. All rights reserved.
//

#import "BSTabBar.h"
@interface BSTabBar ()
/** 中间的发布按钮 */
@property (nonatomic, weak) UIButton *publishButton;
@end
@implementation BSTabBar
#pragma mark - 懒加载
/** 发布按钮 */
- (UIButton *)publishButton
{
    if (!_publishButton) {
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:publishButton];
        _publishButton = publishButton;
    }
    return _publishButton;
}
#pragma mark - 初始化
/**
 *  布局子控件
 */
-(void)layoutSubviews{
    [super layoutSubviews];
    /***  设置所有UITabBarButton的frame**/
    //按钮在尺寸
    CGFloat buttonW = self.bs_width /5;
    CGFloat buttonH = self.bs_height;
    /**** 设置所有UITabBarButton的frame ****/
    CGFloat tabBarButtonY = 0;
    //按钮索引
    int tabBarButtonIndex = 0;
    for (UIView *subview in self.subviews) {
        if (subview.class != NSClassFromString(@"UITabBarButton"))  continue;
        CGFloat tabBarButtonX = tabBarButtonIndex * buttonW;
        if (tabBarButtonIndex >=2) {
            tabBarButtonX +=buttonW;
        }
        
        subview.frame = CGRectMake(tabBarButtonX, tabBarButtonY, buttonW, buttonH);
        //增加索引
        tabBarButtonIndex++;
    }
    /**** 设置中间的发布按钮的frame ****/
    self.publishButton.frame = CGRectMake(0, 0, buttonW, buttonH);
    self.publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
}
#pragma mark - 监听
-(void)publishClick{
    BSLogFunc
}

@end
