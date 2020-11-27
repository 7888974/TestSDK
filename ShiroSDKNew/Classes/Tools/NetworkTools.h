//
//  NetworkTools.h
//  ShiroSDKNew
//
//  Created by ShiroJoy on 2020/11/25.
//  Copyright © 2020 yhw. All rights reserved.
//


#import <AFNetworking/AFNetworking.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    GET,
    POST,
} requestType;

@interface NetworkTools : AFHTTPSessionManager

+(instancetype)sharedTools;


/// 网络请求
/// @param requestType 请求方式
/// @param URLString 请求地址
/// @param param 参数
/// @param headers headers
/// @param finished 回调
-(void)request:(requestType)requestType
     URLString:(NSString *)URLString
         param:(nullable id)param
       headers:(nullable id)headers
      finished:(void(^)(id response, NSError *error))finished;

@end

NS_ASSUME_NONNULL_END
