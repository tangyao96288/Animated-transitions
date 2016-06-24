//
//  TuijianViewController.m
//  04-ManManUI
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import "TuijianViewController.h"
#import "DetailViewController.h"

@interface TuijianViewController ()

@end

@implementation TuijianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加按钮
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [button addTarget:self action:@selector(onclicked) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    //设置背景图
    UIImageView * bg = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"bg2"];
    [self.view addSubview:bg];
    
    
    
}

#pragma mark - 按钮点击
- (void)onclicked{

   //创建下一个界面的对象
    DetailViewController * detail = [[DetailViewController alloc] init];
    
    //隐藏tabBarController的tabBar
    detail.hidesBottomBarWhenPushed = YES;
    
    //可以通过子视图控制器拿到父视图控制器的导航控制
    [self.navigationController pushViewController:detail animated:YES];
    
    
    
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
