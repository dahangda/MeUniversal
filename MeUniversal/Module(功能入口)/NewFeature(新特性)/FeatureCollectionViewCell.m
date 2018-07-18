//
//  FeatureCollectionViewCell.m
//  MeUniversal
//
//  Created by YanHang on 2018/7/17.
//  Copyright © 2018年 Yanhang. All rights reserved.
//

#import "FeatureCollectionViewCell.h"
@interface FeatureCollectionViewCell()
/** 图片显示 */
@property(nonatomic,strong) UIImageView *       ImageView;
@end
@implementation FeatureCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _ImageView = [[UIImageView alloc]initWithFrame:CGRectZero];
        [self addSubview:_ImageView];
    }
    return self;
};

- (void)setImageName:(NSString *)imageName
{
    _imageName = imageName;
    _ImageView.image = [UIImage imageNamed:imageName];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [_ImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(0);
        make.left.right.equalTo(0);
    }];
}
@end

