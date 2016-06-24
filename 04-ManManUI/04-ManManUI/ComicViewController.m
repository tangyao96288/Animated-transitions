//
//  ComicViewController.m
//  04-ManManUI
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import "ComicViewController.h"
#import "YTSegmentControl.h"
#import "TuijianViewController.h"
#import "DingyueViewController.h"

@interface ComicViewController (){

    //=====两个view====
    //订阅
    UIView * _dingyueView;
    //推荐
    UIView * _tuijianView;
    
    //====两个视图控制器===
    //订阅
    DingyueViewController * _dingyueController;
    //推荐
    TuijianViewController * _tuijianController;
    
    
}

@end

@implementation ComicViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    //1.定制navigationItem
    [self navigationItemSetting];
    
    
    //2.两个view形式来做订阅和推荐之间的切换
//    [self changeViewWithView];
    
    //3.两个viewController来做订阅和推荐之间的切换
    [self changeViewWithViewController];
    
    
}

#pragma mark - 两个viewController来做订阅和推荐之间的切换
- (void)changeViewWithViewController{

    //1.初始化视图控制器
    _tuijianController = [[TuijianViewController alloc] init];
    _dingyueController = [[DingyueViewController alloc] init];
    
    //2.将一个视图控制器显示在另外一个视图控制器上
    //a.将需要被显示的视图控制作为显示这个视图控制器的子视图控制器
    [self addChildViewController:_tuijianController];
    [self addChildViewController:_dingyueController];
    
    //b.将推荐和订阅的视图控制器的view显示在当前控制器的view上
    [self.view addSubview:_tuijianController.view];
    
    //设置订阅视图控制器的view的frame
    _dingyueController.view.center = CGPointMake(-self.view.center.x, self.view.center.y);
    [self.view addSubview:_dingyueController.view];
    
}

#pragma mark - 通过两个视图进行推荐和订阅的切换
- (void)changeViewWithView{
    
    //1.设置背景图
    UIImageView * bg = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"bg2"];

    //推荐
    _tuijianView = [[UIView alloc] initWithFrame:self.view.bounds];
    [_tuijianView addSubview:bg];
    [self.view addSubview:_tuijianView];
    
    
    //订阅
    _dingyueView = [[UIView alloc] initWithFrame:CGRectMake(-self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height)];
    UIImageView * bg2 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bg2.image = [UIImage imageNamed:@"bg3"];
    [_dingyueView addSubview:bg2];
    [self.view addSubview:_dingyueView];
    
}

#pragma mark - 定制视图控制器
- (void)navigationItemSetting{

    //1.设置titleView
    YTSegmentControl * segment = [[YTSegmentControl alloc] initWithItems:@[@"订阅", @"推荐"]];
    segment.frame = CGRectMake(0, 0, 100, 40);
    
    //设置选中颜色
    segment.selectedColor = [UIColor whiteColor];
    segment.normalColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.7];
    segment.isShowLine = NO;
    //设置默认被选中的分段
    segment.selectedSegmentIndex = 1;
    //添加事件
    [segment addTarget:self action:@selector(segmentOnclicked:)];
    
    //设置titleView
    self.navigationItem.titleView = segment;
    
    
}


#pragma mark - 分段选择器被点击
- (void)segmentOnclicked:(YTSegmentControl *)segment{

    if (segment.selectedSegmentIndex == 0) {
        //订阅被点击
        [UIView animateWithDuration:0.4f animations:^{
            //订阅显示在屏幕上
            _dingyueController.view.center = self.view.center;
            //推荐显示在屏幕外
            _tuijianController.view.center = CGPointMake(self.view.frame.size.width * 1.5, self.view.center.y);
        }];
        
    }else{
    
        //推荐被点击
        [UIView animateWithDuration:0.4f animations:^{
            //推荐显示在屏幕上
            _tuijianController.view.center = self.view.center;
            //订阅显示在屏幕外
            _dingyueController.view.center = CGPointMake(-self.view.center.x, self.view.center.y);
        }];
        
    }
    
}


@end
