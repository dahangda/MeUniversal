//
//  URLMacros.h
//  MeUniversal
//
//  Created by YanHang on 2018/6/5.
//  Copyright © 2018年 Yanhang. All rights reserved.
//
#import <Foundation/Foundation.h>
#ifndef URLMacros_h
#define URLMacros_h

#pragma mark ————— 线上—————

//#define serverIP          @"http://ppgy.handbbc.com/pgypi/"

#pragma mark ————— 测试—————

#define  serverIP            @"http://192.168.1.86/pgypi/"
//#define  serverIP            @"http://192.168.1.145:8080/pgypi/"

#pragma mark ————— 接口—————

NS_INLINE NSString* IPWithString(NSString *string){
    
    return [NSString stringWithFormat:@"%@%@",serverIP,string];
    
}

#endif /* URLMacros_h */
