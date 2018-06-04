//
//  DMURLSessionConfiguration.h
//  DoggerMonitor
//
//  Created by summertian4 on 03/07/2018.
//  Copyright (c) 2018 summertian4. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMURLSessionConfiguration : NSObject

@property (nonatomic,assign) BOOL isSwizzle;

+ (DMURLSessionConfiguration *)defaultConfiguration;

/**
 *  swizzle NSURLSessionConfiguration's protocolClasses method
 */
- (void)load;

/**
 *  make NSURLSessionConfiguration's protocolClasses method is normal
 */
- (void)unload;

@end
