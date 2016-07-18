//
//  BSTabBarController.m
//  01-百思不得姐
//
//  Created by qf on 16/7/16.
//  Copyright © 2016年 qf. All rights reserved.
//

#import "BSTabBarController.h"
#import "BSTabBar.h"
#import "BSEssenceViewController.h"
#import "BSNewViewController.h"
#import "BSFollowViewController.h"
#import "BSMeViewController.h"
@interface BSTabBarController ()
@property (nonatomic,strong)UIButton *publishButton;
@end

@implementation BSTabBarController

#pragma mark -初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**** 设置所有UITabBarItem的文字属性 ****/
    [self setupItemTitleTextAttributes];
   
    /**** 添加子控制器 ****/
    [self setupChildViewControllers];
    
    /**** 更换TabBar ****/
    [self setupTabBar];

    
}
/**
 *  设置所有UITabBarItem的文字属性
 */
-(void)setupItemTitleTextAttributes{
    UITabBarItem *item = [UITabBarItem appearance];
    
    //普通状态下的文字属性
    NSMutableDictionary *normalAttrs  = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    //选中状态下的文字属性
    NSMutableDictionary *selectdAttrs = [NSMutableDictionary dictionary];
    selectdAttrs[NSForegroundColorAttributeName]= [UIColor darkGrayColor];
    [item setTitleTextAttributes:selectdAttrs forState:UIControlStateSelected];
    
}
//添加子控制器
-(void)setupChildViewControllers{
    
    [self setupOneClidViewController:[[UINavigationController alloc] initWithRootViewController:[[BSEssenceViewController alloc]init] ]title:@"精华" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    [self setupOneClidViewController:[[UINavigationController alloc] initWithRootViewController:[[BSNewViewController alloc]init]] title: @"新帖" image:@"tabBar_new_icon" selectImage:@"tabBar_new_click_icon"];
    
    [self setupOneClidViewController:[[UINavigationController alloc] initWithRootViewController:[[BSFollowViewController alloc]init]] title:@"关注" image:@"tabBar_friendTrends_icon" selectImage:@"tabBar_friendTrends_click_icon"];
    [self setupOneClidViewController:[[UINavigationController alloc] initWithRootViewController:[[BSMeViewController  alloc]init]] title:@"我" image:@"tabBar_me_icon" selectImage:@"tabBar_me_click_icon"];
    
}
//初始化一个子控制器
-(void)setupOneClidViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage{
  
    //vc.view.backgroundColor = BSRandomColor;
    vc.tabBarItem.title = title;
    if(image.length) {
        vc.tabBarItem.image = [UIImage imageNamed:image];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    }

    [self addChildViewController:vc];
    
}
//更换TabBar
-(void) setupTabBar{
    /**** 更换TabBar ****/
    [self setValue:[[BSTabBar alloc] init] forKey:@"tabBar"];
    
}

@end
