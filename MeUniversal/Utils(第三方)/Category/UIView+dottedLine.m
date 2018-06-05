//
//  UIView+dottedLine.m
//  pgyiphone
//
//  Created by YanHang on 2018/1/6.
//  Copyright © 2018年 handbbc. All rights reserved.
//

#import "UIView+dottedLine.h"

@implementation UIView (dottedLine)
-(void)addBottedlineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor{
    CAShapeLayer *border = [CAShapeLayer layer];
    
    border.strokeColor = lineColor.CGColor;
    
    border.fillColor = nil;
    border.path = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
    
    
    border.frame = self.bounds;
    border.lineWidth = lineWidth;
    
    border.lineCap = @"square";
    //设置线宽和线间距
    border.lineDashPattern = @[@4, @5];
    
    [self.layer addSublayer:border];
} 
@end
