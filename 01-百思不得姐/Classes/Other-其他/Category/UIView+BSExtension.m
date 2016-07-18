//
//  UIView+BSExtension.m
//  01-百思不得姐
//
//  Created by Acer on 16/7/20.
//  Copyright © 2016年 qf. All rights reserved.
//

#import "UIView+BSExtension.h"

@implementation UIView (BSExtension)
-(CGFloat)bs_width
{
    return  self.frame.size.width;
}
-(CGFloat)bs_height
{
    return  self.frame.size.height;
}
-(void)setBs_width:(CGFloat)bs_width
{
    CGRect frame = self.frame;
    frame.size.width = bs_width;
    self.frame = frame;
}
-(void)setBs_height:(CGFloat)bs_height
{
    CGRect frame = self.frame;
    frame.size.height = bs_height;
    self.frame = frame;
}
-(CGFloat) bs_x
{
    return self.frame.origin.x;
}
-(CGFloat) bs_y
{
    return self.frame.origin.y;
}
-(void)setBs_x:(CGFloat)bs_x
{
    CGRect frame = self.frame;
    frame.origin.x = bs_x;
    self.frame = frame;
}
-(void)setBs_y:(CGFloat)bs_y{
    CGRect frame = self.frame;
    frame.origin.y = bs_y;
    self.frame = frame;
}
-(CGFloat) bs_centerX
{
    return self.center.x;
}
-(CGFloat) bs_centerY
{
    return self.center.y;
}
-(void)setBs_centerX:(CGFloat)bs_centerX
{
    CGRect frame = self.frame;
    frame.origin.x = bs_centerX;
    self.frame = frame;
}
-(void)setBs_centerY:(CGFloat)bs_centerY
{
    CGRect frame = self.frame;
    frame.origin.y = bs_centerY;
    self.frame = frame;
}






@end
