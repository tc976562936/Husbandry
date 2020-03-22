//
//  MTabBarViewController.m
//  MovieSchool
//
//  Created by EDZ on 2019/8/1.
//  Copyright © 2019 EDZ. All rights reserved.
//

#import "MTabBarViewController.h"

#import "HCourseViewController.h" //课程
#import "HIndexViewController.h" //首页
#import "HMineViewController.h" //我的
#import "HLivingViewController.h" //直播视频
#import "HBuyViewController.h" //采购

@interface MTabBarViewController ()

@end

@implementation MTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    [UITabBar appearance].translucent = NO;
    [self setupItems];
    [self addAllChildVcs];
}

- (void)setupItems {
    
    //解决ios13中选中不生效问题
    self.tabBar.tintColor = RGBColor(51, 51, 51);
    
    //统一给后面的UITabBarItem设置文字属性
    
    UITabBarItem *item = [UITabBarItem appearance];
    
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColorMake(153, 153, 153),NSFontAttributeName:[UIFont systemFontOfSize:10]} forState:UIControlStateNormal];
    
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColorMake(243.0, 33.0, 93.0),NSFontAttributeName:[UIFont systemFontOfSize:10]} forState:UIControlStateSelected];
    
}
- (void)addAllChildVcs {
    
    
    // 首页
    HIndexViewController *indexVc = [[HIndexViewController alloc] init];
    indexVc.hidesBottomBarWhenPushed = NO;
    MBaseNavigationController *indexNavController = [[MBaseNavigationController alloc] initWithRootViewController:indexVc];
    indexNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImageMake(@"kecheng_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"kecheng_s")imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    AddAccessibilityHint(indexNavController.tabBarItem, @"首页");
    
    // 采购
    HBuyViewController *buyVc = [[HBuyViewController alloc] init];
    buyVc.hidesBottomBarWhenPushed = NO;
    MBaseNavigationController *buyNavController = [[MBaseNavigationController alloc] initWithRootViewController:buyVc];
    buyNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"采购" image:[UIImageMake(@"kecheng_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"kecheng_s")imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    AddAccessibilityHint(buyNavController.tabBarItem, @"采购");
    
    // 直播·视频
    HLivingViewController *livingVc = [[HLivingViewController alloc] init];
    livingVc.hidesBottomBarWhenPushed = NO;
    MBaseNavigationController *livingVcNavController = [[MBaseNavigationController alloc] initWithRootViewController:livingVc];
    buyNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"直播·视频" image:[UIImageMake(@"kecheng_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"kecheng_s")imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    AddAccessibilityHint(livingVcNavController.tabBarItem, @"直播·视频");
    
    
    // 课程
    HCourseViewController *coursesViewController = [[HCourseViewController alloc] init];
    coursesViewController.hidesBottomBarWhenPushed = NO;
    MBaseNavigationController *coursesNavController = [[MBaseNavigationController alloc] initWithRootViewController:coursesViewController];
    coursesNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"培训·远程" image:[UIImageMake(@"kecheng_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"kecheng_s")imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    AddAccessibilityHint(coursesNavController.tabBarItem, @"培训·远程");
    
    //我的
    HMineViewController *mineViewController = [[HMineViewController alloc] init];
    mineViewController.hidesBottomBarWhenPushed = NO;
    MBaseNavigationController *mineNavController = [[MBaseNavigationController alloc] initWithRootViewController:mineViewController];
    mineNavController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImageMake(@"wode_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"wode_s") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    AddAccessibilityHint(mineNavController.tabBarItem, @"我的");
    
    //tabbar
    self.viewControllers = @[indexNavController, buyNavController, livingVcNavController,coursesNavController,mineNavController];
}
@end
