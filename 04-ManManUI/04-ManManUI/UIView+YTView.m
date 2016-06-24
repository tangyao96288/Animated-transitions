//
//  UIView+YTView.m
//  
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//


#import "UIView+YTView.h"

@implementation UIView(YTView)

- (void)addTransitionAnimationWithDurection:(NSTimeInterval)durection anitionType:(YTTransitionType)type direction:(YTTransitionDirection)direction{

    //1.创建动画对象
    CATransition * trAnimation = [CATransition animation];
    
    //2.设置动画时间
    trAnimation.duration = durection;
    
    //3.设置动画类型
    NSArray * typeArray = @[@"pageCurl",@"pageUnCurl",@"rippleEffect",@"suckEffect",@"cube",@"oglFlip", kCATransitionFade,kCATransitionMoveIn, kCATransitionPush,kCATransitionReveal];
    [trAnimation setType:typeArray[type]];
    
    //4.设置方向
    NSArray * directionArray = @[@"fromUp",@"fromDown",@"fromLeft", @"fromRight"];
    [trAnimation setSubtype:directionArray[direction]];
    
    //5.添加动画
    [self.layer addAnimation:trAnimation forKey:@"aa"];
    
    
}

@end
