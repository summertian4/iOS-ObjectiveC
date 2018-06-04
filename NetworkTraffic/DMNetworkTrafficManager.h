//
//  DMNetworkTrafficManager.h
//  DoggerMonitor
//
//  Created by 周凌宇 on 2018/5/30.
//

#import <Foundation/Foundation.h>

@class DMNetworkLog;
@interface DMNetworkTrafficManager : NSObject

/** 所有 NSURLProtocol 对外设置接口，可以防止其他外来监控 NSURLProtocol */
@property (nonatomic, strong) NSArray *protocolClasses;


/** 单例 */
+ (DMNetworkTrafficManager *)manager;

/** 通过 protocolClasses 启动流量监控模块 */
+ (void)startWithProtocolClasses:(NSArray *)protocolClasses;
/** 仅以 DMURLProtocol 启动流量监控模块 */
+ (void)start;
/** 停止流量监控 */
+ (void)end;

@end
