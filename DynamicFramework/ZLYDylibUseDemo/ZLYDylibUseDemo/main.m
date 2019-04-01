//
//  main.m
//  ZLYDylibUseDemo
//
//  Created by 周凌宇 on 2019/4/1.
//  Copyright © 2019年 周凌宇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <dlfcn.h>
#import <objc/message.h>
#import "ZLYBird.h"

void loadWhenRunTime() {
    // Open the library.
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"ZLYTestFramework" ofType:nil];
    void *lib_handle = dlopen([bundlePath UTF8String], RTLD_LOCAL);

    if (!lib_handle) {
        NSLog(@"[%s] main: Unable to open library: %s\n",
              __FILE__, dlerror());
        exit(EXIT_FAILURE);
    }

    Class class_person = objc_getClass("ZLYBird");
    ZLYBird *bird = [class_person new];
    bird.name = @"world";
    [bird singing];

    // Close the library.
    if (dlclose(lib_handle) != 0) {

        NSLog(@"[%s] Unable to close library: %s\n",
              __FILE__, dlerror());
        exit(EXIT_FAILURE);
    }
}


int main(int argc, char * argv[]) {
    @autoreleasepool {
        loadWhenRunTime();
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
