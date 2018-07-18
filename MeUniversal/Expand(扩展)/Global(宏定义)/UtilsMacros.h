//
//  UtilsMacros.h
//  MeUniversal
//
//  Created by YanHang on 2018/6/5.
//  Copyright © 2018年 Yanhang. All rights reserved.
//

#ifndef UtilsMacros_h
#define UtilsMacros_h
/** 屏幕高度 */
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
/** 屏幕宽度 */
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
/** 弱引用 */
#define WEAKSELF __weak typeof(self) weakSelf = self;
//判断设备是否为iphoneX
#define iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

#define KStatusBarHeight (iPhoneX ? 24.f:0.f)
#define KStatusBarMargin (iPhoneX ? 22.f:0.f)
#define KTabBarHeight    (iPhoneX ? 83.f:49.f)
#define pageMenuH 40
#define NaviH (SCREEN_HEIGHT == 812 ? 88 : 64) // 812是iPhoneX的高度
#define KWaterSpace     3.0
#define KMarginLeft     12.0
#define KMarginRight    12.0
//获取当前版本号
#define BUNDLE_VERSION [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]
//获取当前版本的biuld
#define BIULD_VERSION [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]
//获取当前设备的UDID
#define DIV_UUID [[[UIDevice currentDevice] identifierForVendor] UUIDString]

#define APPDELEGATE ((AppDelegate *)[UIApplication sharedApplication].delegate)

#define KEYWINDOW  [UIApplication sharedApplication].keyWindow

#define UserInfoData [DCUserInfo findAll].lastObject
#endif /* UtilsMacros_h */
