//
//  AppDelegate.m
//  ShiroSDKNew
//
//  Created by ShiroJoy on 2020/11/25.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController *vc = ViewController.new;
    
    _window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    _window.rootViewController = vc;
    [_window makeKeyAndVisible];
    
    return YES;
}





@end
