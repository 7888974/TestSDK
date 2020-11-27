//
//  NetworkTools.m
//  ShiroSDKNew
//
//  Created by ShiroJoy on 2020/11/25.
//  Copyright © 2020 yhw. All rights reserved.
//



#import "NetworkTools.h"

@implementation NetworkTools


+ (instancetype)sharedTools{
    static NetworkTools *tools;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *url = [NSURL URLWithString:@"http://123.206.30.72:8001/"];
        tools = [[NetworkTools alloc] initWithBaseURL:url];
        //发送给服务器的格式
        tools.requestSerializer = [AFJSONRequestSerializer serializer];
    });
    return tools;
}


-(void)request:(requestType)requestType
     URLString:(NSString *)URLString
         param:(nullable id)param
       headers:(nullable id)headers
      finished:(void(^)(id response, NSError *error))finished{
    
    switch (requestType) {
        case 0:
            {
                [self GET:URLString parameters:(NSDictionary*)param headers:headers progress:^(NSProgress * _Nonnull downloadProgress) {
                    
                } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                    finished(responseObject,nil);
                } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                    finished(nil,error);
                }];
            }
            break;
           case 1:
        {
            [self POST:URLString parameters:param headers:headers progress:^(NSProgress * _Nonnull downloadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                finished(responseObject,nil);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                finished(nil,error);
            }];
        }
            break;

    }
    
    
    
}

@end
