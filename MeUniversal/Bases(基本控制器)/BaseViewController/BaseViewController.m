//
//  BaseViewController.m
//  MeUniversal
//
//  Created by YanHang on 2018/7/6.
//  Copyright © 2018年 Yanhang. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
{
    UIView *pageLoadingView;
    UIView *loadingView;
    UIImageView *loadingImageView;
    UILabel *loadingLabel;
    UIView *_failureHintView;
    UIButton *_leftBarButton;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
    [self setNav];
}

- (void)initView{
    self.view.backgroundColor = [UIColor colorWithRed:0.86 green:0.89 blue:0.91 alpha:1];
}

- (void)setNav{
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc]init]
                                                  forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc]init]];
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return _StatusBarStyle;
}
//动态更新状态栏颜色
-(void)setStatusBarStyle:(UIStatusBarStyle)StatusBarStyle{
    _StatusBarStyle = StatusBarStyle;
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)dismissHintPageWhenLoadFailed {
    if (_failureHintView.superview != nil) {
        [_failureHintView removeFromSuperview];
    }
}

- (void)endPageLoadingProgress{
    [pageLoadingView removeFromSuperview];
    [pageLoadingView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}
#pragma mark - 加载失败
-(void)showPageLoadingFailedWithReloadTarget:(id)target action:(SEL)action
{
    if (!pageLoadingView) {
        pageLoadingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT - NaviH  - KTabBarHeight)];
        pageLoadingView.backgroundColor = [UIColor colorWithRed:0.86 green:0.89 blue:0.91 alpha:1];
    }
    [pageLoadingView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.view addSubview:pageLoadingView];
    
    UIButton *reloadImageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    reloadImageBtn.frame = CGRectMake(0, 0, 40, 40);
    reloadImageBtn.center = CGPointMake(pageLoadingView.width/2, pageLoadingView.height/2);
    [pageLoadingView addSubview:reloadImageBtn];
    [reloadImageBtn setImage:[UIImage imageNamed:@"refresh_btn"] forState:UIControlStateNormal];
    
    UIButton *reloadBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    reloadBtn.frame = CGRectMake(0, reloadImageBtn.bottom + 20, 200, 30);
    reloadBtn.centerX = pageLoadingView.width/2;
    [pageLoadingView addSubview:reloadBtn];
    reloadBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [reloadBtn setTitleColor:[UIColor colorWithRed:0.66 green:0.66 blue:0.66 alpha:1] forState:UIControlStateNormal];
    [reloadBtn setTitle:@"加载失败,请点击重试" forState:UIControlStateNormal];
    
    if (target){
        [reloadImageBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        [reloadBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

-(void)addNavigationBarLeftButtonItemWithInfo:(UIImage *)image target:(id)target action:(SEL)action
{
    _leftBarButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _leftBarButton.frame = CGRectMake(0, 0, 24, 24);
    [_leftBarButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [_leftBarButton setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:_leftBarButton];
    self.navigationItem.leftBarButtonItem = item;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
