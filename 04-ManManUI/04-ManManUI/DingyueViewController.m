//
//  DingyueViewController.m
//  04-ManManUI
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import "DingyueViewController.h"

@interface DingyueViewController ()

@end

@implementation DingyueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置背景图
    UIImageView * bg = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"bg3"];
    [self.view addSubview:bg];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
