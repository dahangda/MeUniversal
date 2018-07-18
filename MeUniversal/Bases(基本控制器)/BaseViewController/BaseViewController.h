//
//  BaseViewController.h
//  MeUniversal
//
//  Created by YanHang on 2018/7/6.
//  Copyright © 2018年 Yanhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
//修改状态栏颜色
@property (nonatomic, assign) UIStatusBarStyle StatusBarStyle;
//是否隐藏导航栏
@property (nonatomic, assign) BOOL isHidenNaviBar;

/**
 *  当加载数据失败时，显示重新加载数据的页面
 *  仅仅适用于非自动布局页面，自动布局页面建议使用: showHintPageWhenLoadFailedWithReloadTarget:action:
 *
 *  @param target 接收消息的对象
 *  @param action 事件处理方法
 */
-(void)showPageLoadingFailedWithReloadTarget:(id)target action:(SEL)action;
/**
 *  隐藏加载失败重新加载页面
 */
- (void)dismissHintPageWhenLoadFailed;

/**
 隐藏加载动画与失败页面
 */
- (void)endPageLoadingProgress;
/**
 *  添加导航栏左侧按钮
 *
 *  @param image  按钮图片
 *  @param target self
 *  @param action 按钮执行方法
 */
-(void)addNavigationBarLeftButtonItemWithInfo:(UIImage*)image target:(id)target action:(SEL)action;
@end
