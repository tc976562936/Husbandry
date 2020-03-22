//
//  MBaseNavigationController.m
//  MovieSchool
//
//  Created by EDZ on 2019/8/1.
//  Copyright © 2019 EDZ. All rights reserved.
//

#import "MBaseNavigationController.h"

@interface MBaseNavigationController ()

@end

@implementation MBaseNavigationController
+ (void)initialize
{
    if (self == [MBaseNavigationController class]) {
        
        UINavigationBar *appearance = [UINavigationBar appearance];
        [appearance setBarTintColor:[UIColor whiteColor]];
        [appearance setTintColor:[UIColor blackColor]];
        
        NSMutableDictionary *textAttribute = [NSMutableDictionary dictionary];
        textAttribute[NSForegroundColorAttributeName] = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0];//标题颜色
        textAttribute[NSFontAttributeName] = [UIFont fontWithName:@"PingFang-SC-Medium" size: 17];//标题大小
        [appearance setTitleTextAttributes:textAttribute];
        
        
        UIImage *backGroundImage = [UIImage imageNamed:@""];
        backGroundImage = [backGroundImage resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeStretch];
        [appearance setBackgroundImage:backGroundImage forBarMetrics:UIBarMetricsDefault];
    
        //去除底部黑线
        [appearance setShadowImage:[UIImage new]];
        
        // 更换返回按钮的图片
        UIImage *backButtonImage = [[UIImage imageNamed:@"bt_navigationBar_back"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        appearance.backIndicatorTransitionMaskImage = backButtonImage;
        appearance.backIndicatorImage = backButtonImage;
    
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count > 0) { // 如果push进来的不是第一个控制器
        viewController.hidesBottomBarWhenPushed = YES;
    }
    // 这句super的push要放在后面, 让viewController可以覆盖上面设置的leftBarButtonItem
    [super pushViewController:viewController animated:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
@end
