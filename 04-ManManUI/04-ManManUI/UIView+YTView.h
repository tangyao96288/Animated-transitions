//
//  UIView+YTView.h
//  
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import <UIKit/UIKit.h>


//动画类型的宏
typedef enum : NSUInteger {
    YT_PageCurl,     //向上翻一页
    YT_PageUnCurl,   //向下翻一页
    YT_RippleEffect, //滴水效果
    YT_SuckEffect,   //收缩效果，如一块布被抽走
    YT_Cube,         //立方体效果
    YT_OglFlip,      //上下翻转效果
    YT_Fade,          //交叉淡化过渡
    YT_MoveIn,       //新视图移到旧视图上面
    YT_Push,          //新视图把旧视图推出去
    YT_Reveal        //将旧视图移开,显示下面的新视图
    
} YTTransitionType;


//动画方向
typedef enum : NSUInteger {
    YT_UP,
    YT_DOWN,
    YT_LEFT,
    YT_RIGHT
} YTTransitionDirection;


@interface UIView(YTView)
//声明需要添加的方法
- (void)addTransitionAnimationWithDurection:(NSTimeInterval)durection anitionType:(YTTransitionType)type direction:(YTTransitionDirection)direction;

@end
