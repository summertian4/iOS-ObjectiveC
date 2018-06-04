//
//  DMNetworkTrafficManager.m
//  DoggerMonitor
//
//  Created by 周凌宇 on 2018/5/30.
//

#import "DMNetworkTrafficManager.h"
#import "DMURLProtocol.h"

@interface DMNetworkTrafficManager ()

@end

@implementation DMNetworkTrafficManager

#pragma mark - Public

+ (DMNetworkTrafficManager *)manager {
    static DMNetworkTrafficManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager=[[DMNetworkTrafficManager alloc] init];
    });
    return manager;
}

+ (void)startWithProtocolClasses:(NSArray *)protocolClasses {
    [self manager].protocolClasses = protocolClasses;
    [DMURLProtocol start];
}

+ (void)start {
    [self manager].protocolClasses = @[[DMURLProtocol class]];
    [DMURLProtocol start];
}

+ (void)end {
    [DMURLProtocol end];
}

@end
