//
//  AppDelegate.m
//  Team Awesome
//
//  Created by Liviu Maria on 18/02/2015.
//  Copyright (c) 2015 Liviu Maria. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *viewcontroller1 = [ViewController new];
    SecondViewController *viewcontroller2 = [SecondViewController new];
    
    UITabBarController *tabBarController = [UITabBarController new];
    
    UINavigationController *navigation1 = [[UINavigationController alloc] initWithRootViewController:viewcontroller1];
    UINavigationController *navigation2 = [[UINavigationController alloc] initWithRootViewController:viewcontroller2];
    
    tabBarController.viewControllers = @[navigation1, navigation2];
    

    
    viewcontroller1.title = @"Countries";
    viewcontroller2.title = @"Fonts";
    tabBarController.tabBar.translucent = NO;
    
    
    [[UINavigationBar appearance] setTranslucent: NO];
//    navigation1.navigationBar.barTintColor = [UIColor brownColor];
    [[UINavigationBar appearance] setBarTintColor:[UIColor brownColor]];
    
    UITabBarItem *tabItem1 =[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    tabItem1.title = @"countries";
    navigation1.tabBarItem = tabItem1;
    
    UITabBarItem *tabItem2 =[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
    tabItem2.title = @"fonts";
    navigation2.tabBarItem = tabItem2;
    
    
    
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
