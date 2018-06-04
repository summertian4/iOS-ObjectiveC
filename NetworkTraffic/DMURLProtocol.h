//
//  DMURLProtocol.h
//  DoggerMonitor
//
//  Created by 周凌宇 on 03/07/2018.
//


#import <Foundation/Foundation.h>

@interface DMURLProtocol : NSURLProtocol

/** 开启网络请求拦截 */
+ (void)start;
/** 停止网络请求拦截 */
+ (void)end;

@end
