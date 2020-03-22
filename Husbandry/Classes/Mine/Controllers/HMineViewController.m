//
//  HMineViewController.m
//  Husbandry
//
//  Created by edz on 2020/3/15.
//  Copyright © 2020 husbandry. All rights reserved.
//

#import "HMineViewController.h"
#import "HMineHeaderView.h"
#import "HMineShopTableViewCell.h"
@interface HMineViewController()
@property(nonatomic,strong)NSMutableArray *cells;

@property(nonatomic,strong)HMineHeaderView *headerView;

@end

@implementation HMineViewController


#pragma mark - 视图生命周期
-(void)viewWillAppear:(BOOL)animated {
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    self.navigationController.navigationBarHidden = NO;

}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人中心";
    self.tableView.separatorColor =  MUICommonLineColor;
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.tableView.tableHeaderView = self.headerView;
    
}

#pragma mark - tableview
- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = RGBColor(247, 247, 247);
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 8.f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    if (indexPath.section == 0) {
        return 180;
    }
    return 56;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        HMineShopTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([HMineShopTableViewCell class])];
        if (!cell) {
            cell = [[HMineShopTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([HMineShopTableViewCell class])];
        }
        return cell;
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
}

#pragma mark - 界面跳转
- (void)gotoInvolveView {
  
}

//工具包
- (void)gotoToolsView {
   
}

//我的文件夹
- (void)gotoMineFileView {
   
}

//设置
- (void)gotoSettingVC {

}

//投诉l记录
- (void)gotoAccuseView {

}

- (void)gotoCustomerServiceView {

}

- (void)toinfoVc {
}
- (HMineHeaderView *)headerView {
    if (!_headerView) {
        _headerView = [[HMineHeaderView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 190)];
    }
    return _headerView;
}

@end
