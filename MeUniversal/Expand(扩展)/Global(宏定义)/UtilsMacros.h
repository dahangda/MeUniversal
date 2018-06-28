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
#define ScreenH [UIScreen mainScreen].bounds.size.height
/** 屏幕宽度 */
#define ScreenW [UIScreen mainScreen].bounds.size.width
/** 弱引用 */
#define WEAKSELF __weak typeof(self) weakSelf = self;
//判断设备是否为iphoneX
#define DCIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
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
