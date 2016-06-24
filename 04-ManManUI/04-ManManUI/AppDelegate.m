//
//  AppDelegate.m
//  04-ManManUI
//
//  Created by 唐姚 on 16/4/14.
//  Copyright © 2016年 唐姚. All rights reserved.
//

#import "AppDelegate.h"
#import "YTTabBarController.h"
#import "StartViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //======写自己代码=======
    //NSUserDefaults是iOS提供的数据本地化的一种方式，专门用来存储一些轻量级的数据（设置性的数据），能存储的数据类型只有:NSArray、NSDictionary、NSString、NSNumber、BOOL、NSDate、NSData
    //实质就是通过一个本地的plist文件去存储数据
    //存储数据的形式就以键值对的形式去存储的
    //判断应用程序是否是第一次进入（将一个是否是第一次进入程序的数据存到本地plist文件中，每次进入程序先去读取数据判断是否是第一次进入）
    //isFirstIn:BOOL
    
    //1.拿到NSUserdefaults单例对象(实质就相当拿到系统为我们创建的plist文件)
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    
    //2.取到plist文件键指定键对应的值
    BOOL isFirstIn = [defaults boolForKey:@"isNotFirstIn"];
    
    
    
    //如果不是第一次进入
    if (isFirstIn) {
        
        //如果不是第一次进入应用程序：
        //作为window的根视图控制器
        //创建标签栏控制器的对象
        YTTabBarController * tabBarC = [[YTTabBarController alloc] init];
        self.window.rootViewController = tabBarC;
    }else{
    
        //如果是第一次进入应用程序
        //将启动页对应的视图控制器作为window的根视图控制器
        StartViewController * start = [[StartViewController alloc] init];
        self.window.rootViewController = start;
        
        //如果是第一次进入
        [defaults setBool:YES forKey:@"isNotFirstIn"];
        
        
    }
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
