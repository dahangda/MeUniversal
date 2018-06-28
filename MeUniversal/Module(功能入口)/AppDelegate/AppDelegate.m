//
//  AppDelegate.m
//  MeUniversal
//
//  Created by YanHang on 2018/6/5.
//  Copyright © 2018年 Yanhang. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self setUpRootVC];
    
     #if defined(DEBUG)||defined(_DEBUG) //仅仅在模拟器上跑测试会显示FPS
     [[JPFPSStatus sharedInstance] open];
//    [[FLEXManager sharedManager] showExplorer];
#endif
    
    [self setUpFixiOS11]; //适配IOS 11
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)setUpRootVC{
    
    if ([BUNDLE_VERSION isEqualToString:[DCAppVersionTool dc_GetLastOneAppVersion]]) {//判断是否当前版本号等于上一次储存版本号
        
//        self.window.rootViewController = [[DCTabBarController alloc] init];
    }else{
        
        [DCAppVersionTool dc_SaveNewAppVersion:BUNDLE_VERSION]; //储存当前版本号
        
        // 设置窗口的根控制器
//        DCNewFeatureViewController *dcFVc = [[DCNewFeatureViewController alloc] init];
//        [dcFVc setUpFeatureAttribute:^(NSArray *__autoreleasing *imageArray, UIColor *__autoreleasing *selColor, BOOL *showSkip, BOOL *showPageCount) {
//            
//            *imageArray = @[@"guide1",@"guide2",@"guide3",@"guide4"];
//            *showPageCount = YES;
//            *showSkip = YES;
//        }];
//        self.window.rootViewController = dcFVc;
    }
}

#pragma mark - 适配
- (void)setUpFixiOS11
{
    if (@available(ios 11.0,*)) {
        UIScrollView.appearance.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        UITableView.appearance.estimatedRowHeight = 0;
        UITableView.appearance.estimatedSectionFooterHeight = 0;
        UITableView.appearance.estimatedSectionHeaderHeight = 0;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
 
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
