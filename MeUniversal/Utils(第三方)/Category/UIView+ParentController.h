//
//  UIView+ParentController.h
//  pgyiphone
//
//  Created by YanHang on 2018/5/30.
//  Copyright © 2018年 handbbc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ParentController)
/** 这个方法通过响应者链条获取view所在的控制器 */
- (UIViewController *)parentController;

/** 这个方法通过响应者链条获取view所在的控制器 */
+ (UIViewController *)currentViewController;
//1.提供一个UIView的分类方法，这个方法通过响应者链条获取view所在的控制器
- (UIViewController *)getCurrentVC;
@end
