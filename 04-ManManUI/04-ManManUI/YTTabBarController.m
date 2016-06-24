//
//  YTTabBarController.m
//  04-ManManUI
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import "YTTabBarController.h"
#import "MeViewController.h"
#import "FulisheViewController.h"
#import "DiscoverViewController.h"
#import "ComicViewController.h"
#import "YTNavigationController.h"

@interface YTTabBarController ()

@end

@implementation YTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //在这儿添加需要标签栏控制器管理的视图控制器对象
    //1.创建视图控制器对象
    [self creatController];
}

#pragma mark - 创建视图控制器
- (void)creatController{

    //1.条漫
    ComicViewController * comic = [[ComicViewController alloc] init];
    YTNavigationController * comicNav = [[YTNavigationController alloc] initWithRootViewController:comic];
    //设置title
    comic.title = @"条漫";
    //设置item
    [comicNav.tabBarItem setImage:[UIImage imageNamed:@"tiaoman_u"]];
    [comicNav.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tiaoman_d"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    //2.发现
    DiscoverViewController * discover = [[DiscoverViewController alloc] init];
    YTNavigationController * discoverNav = [[YTNavigationController alloc] initWithRootViewController:discover];
    //设置title
    discover.title = @"发现";
    //设置item
    [discoverNav.tabBarItem setImage:[UIImage imageNamed:@"faxian_u"]];
    [discoverNav.tabBarItem setSelectedImage:[[UIImage imageNamed:@"faxian_d"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    
    //3.福利社
    FulisheViewController * fulishe = [[FulisheViewController alloc] init];
    YTNavigationController * fulisheNav = [[YTNavigationController alloc] initWithRootViewController:fulishe];
    fulishe.title = @"福利社";
    //设置item
    [fulisheNav.tabBarItem setImage:[UIImage imageNamed:@"huiben_u"]];
    [fulisheNav.tabBarItem setSelectedImage:[[UIImage imageNamed:@"huiben_d"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    //4.我
    MeViewController * me = [[MeViewController alloc] init];
    YTNavigationController * meNav = [[YTNavigationController alloc] initWithRootViewController:me];
    me.title = @"我";
    //设置item
    [meNav.tabBarItem setImage:[UIImage imageNamed:@"wode_u"]];
    [meNav.tabBarItem setSelectedImage:[[UIImage imageNamed:@"wode_d"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    
    //通过设置tabBar的填充颜色去设置item文字的选中颜色
    [self.tabBar setTintColor:[UIColor colorWithRed:255/255.0f green:64/255.0f blue:15/255.0f alpha:1]];
    
    
    //将导航控制器添加到标签栏控制器中
    self.viewControllers = @[comicNav, discoverNav,fulisheNav, meNav];
    
}




@end
