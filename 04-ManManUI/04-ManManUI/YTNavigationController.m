//
//  YTNavigationController.m
//  04-ManManUI
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import "YTNavigationController.h"

@interface YTNavigationController ()

@end

@implementation YTNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //定制导航条
    //1.设置导航条颜色
    [self.navigationBar setBarTintColor:[UIColor colorWithRed:255/255.0f green:64/255.0f blue:15/255.0f alpha:1]];
    
    //2.设置导航条的样式
    [self.navigationBar setBarStyle:UIBarStyleBlack];
    
}



@end
