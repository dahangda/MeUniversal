//
//  NerworkSingleton.h
//  demoapp
//
//  Created by mac on 16/3/9.
//  Copyright © 2016年 handbbc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>


//请求超时
#define TIMEOUT 30

typedef void(^SuccessBlock)(id responseBody);
typedef void(^FailureBlock)(NSError *error);

@interface NetworkSingleton : NSObject

+ (NetworkSingleton *)shareManager;

//判断是否联网
- (BOOL)isConnectionAvailable;
//基本http请求
- (void)httpRequest:(NSDictionary*)userInfo url:(NSString *)url success:(SuccessBlock)successblock failed:(FailureBlock)failureblock;
//下载请求
//- (AFHTTPRequestOperation*)downLoadFile:(NSDictionary*)UserInfo url:(NSString*)url withName:(NSString*)Name;

@end
