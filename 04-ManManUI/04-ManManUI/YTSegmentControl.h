//
//  YTSegmentControl.h
//  
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YTSegmentControl : UIView



//选中分段的下标
@property(nonatomic, assign) NSUInteger selectedSegmentIndex;

//选中颜色
@property(nonatomic, strong) UIColor * selectedColor;
//正常状态下的颜色
@property(nonatomic, strong) UIColor * normalColor;

//是否显示下面的线条
@property(nonatomic, assign) BOOL isShowLine;


//通过items去创建segmentControl对象
- (instancetype)initWithItems:(NSArray *)items;
//添加事件
- (void)addTarget:(id)target action:(SEL)action;

@end
