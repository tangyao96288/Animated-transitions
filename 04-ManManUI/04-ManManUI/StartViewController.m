//
//  StartViewController.m
//  04-ManManUI
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import "StartViewController.h"
#import "YTTabBarController.h"
#import "UIView+YTView.h"

@interface StartViewController ()

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //定时一段时间后进入主界面
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(time) userInfo:nil repeats:NO];
    
}

- (void)time{

    //进入主界面
    YTTabBarController * tabBarC = [[YTTabBarController alloc] init];
    
    //在这儿可以添加转场动画
    [self.view.window addTransitionAnimationWithDurection:0.3f anitionType:YT_RippleEffect direction:YT_RIGHT];
    
    self.view.window.rootViewController = tabBarC;
    
    
}



@end
