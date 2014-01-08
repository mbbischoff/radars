//
//  LCKAppDelegate.m
//  BlurSample
//
//  Created by Matthew Bischoff on 1/8/14.
//  Copyright (c) 2014 Lickability. All rights reserved.
//

#import "LCKAppDelegate.h"
#import "LCKFirstViewController.h"

@implementation LCKAppDelegate

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.tintColor = [UIColor whiteColor];
    
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.tabBar.barTintColor = [UIColor colorWithRed:0.105f green:0.18f blue:0.275f alpha:0.96f];
    
    
    LCKFirstViewController *first = [[LCKFirstViewController alloc] init];
    UINavigationController *navigationController1 = [[UINavigationController alloc] initWithRootViewController:first];
    navigationController1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];

    
    LCKFirstViewController *second = [[LCKFirstViewController alloc] init];
    UINavigationController *navigationController2 = [[UINavigationController alloc] initWithRootViewController:second];
    navigationController2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:1];
    
    tabBarController.viewControllers = @[navigationController1, navigationController2];
    tabBarController.selectedIndex = 0;
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
