//
//  HMineHeaderView.m
//  Husbandry
//
//  Created by edz on 2020/3/22.
//  Copyright © 2020 husbandry. All rights reserved.
//

#import "HMineHeaderView.h"

@interface HMineHeaderView ()
@property (nonatomic,strong) UIImageView *headIv;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *logintimeLabel; //最近登录时间
@property (nonatomic,strong) UIImageView *arrowIv;
@property (nonatomic,strong) UILabel *quanCountLabel; //优惠券个数
@property (nonatomic,strong) UILabel *baoMoneyLabel; //钱包余额

@end
@implementation HMineHeaderView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setup_UI];
    }
    return self;
}
- (void)setup_UI {
    
    [self addSubview:self.headIv];
    [_headIv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).mas_offset(12);
        make.top.mas_equalTo(self).mas_offset(20);
        make.width.height.mas_equalTo(46);
    }];

    [self addSubview:self.nameLabel];
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_headIv.mas_right).mas_offset(18);
        make.top.mas_equalTo(_headIv.mas_top).mas_offset(5);
        make.height.mas_equalTo(12);
    }];
    
    [self addSubview:self.logintimeLabel];
    [_logintimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_nameLabel);
        make.top.mas_equalTo(_nameLabel.mas_bottom).mas_offset(12);
        make.height.mas_equalTo(12);
    }];
    
    [self addSubview:self.arrowIv];
    [_arrowIv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).mas_offset(-12);
        make.centerY.mas_equalTo(_headIv);
        make.width.height.mas_equalTo(28);
    }];
    
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = RGBColor(247, 247, 247);
    [self addSubview:lineView];
    
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_headIv.mas_bottom).mas_offset(20);
        make.left.right.mas_equalTo(self);
        make.height.mas_equalTo(8);
    }];
    
    //左边优惠券
    UIView *quanView = [[UIView alloc] init];
    quanView.backgroundColor = [UIColor whiteColor];
    quanView.layer.cornerRadius = 4;
    quanView.clipsToBounds = YES;
    quanView.layer.borderColor = MUICommonLineColor.CGColor;
    quanView.layer.borderWidth = 0.5;
    [self addSubview:quanView];
    
    [quanView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(lineView.mas_bottom).mas_offset(20);
        make.left.mas_equalTo(_headIv);
        make.height.mas_equalTo(60);
        make.width.mas_equalTo((SCREEN_WIDTH - 40) * 0.5);
    }];
    
    
    //右边钱包
    UIView *baoView = [[UIView alloc] init];
    baoView.backgroundColor = [UIColor whiteColor];
    baoView.layer.cornerRadius = 4;
    baoView.clipsToBounds = YES;
    baoView.layer.borderColor = MUICommonLineColor.CGColor;
    baoView.layer.borderWidth = 0.5;
    [self addSubview:baoView];
    
    [baoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.width.height.mas_equalTo(quanView);
        make.right.mas_equalTo(self).mas_offset(-12);
    }];
    
    
    UIButton *quanBtn = [[UIButton alloc] init];
    [quanBtn setTitle:@"优惠券" forState:UIControlStateNormal];
    [quanBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    quanBtn.titleLabel.font = systemFont(16);
    [quanBtn setTitleColor:HEXColor(@"#333333") forState:UIControlStateNormal];
    [quanView addSubview:quanBtn];
    
    [quanBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(quanView).mas_offset(8);
        make.height.mas_equalTo(20);
    }];
    
    //优惠券个数
    [quanView addSubview:self.quanCountLabel];
    [_quanCountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(quanBtn);
        make.top.mas_equalTo(quanBtn.mas_bottom).mas_offset(8);
        make.height.mas_equalTo(12);
    }];
    
    
    //立即使用优惠券
    UIButton *useBtn = [[UIButton alloc] init];
    [useBtn setTitle:@"立即使用" forState:UIControlStateNormal];
    useBtn.backgroundColor = [UIColor whiteColor];
    useBtn.layer.cornerRadius = 4;
    useBtn.clipsToBounds = YES;
    useBtn.layer.borderColor = HEXColor(@"#FF3366").CGColor;
    useBtn.layer.borderWidth = 0.5;
    useBtn.titleLabel.font = systemFont(12);
    [useBtn setTitleColor:HEXColor(@"#FF3366") forState:UIControlStateNormal];
    [quanView addSubview:useBtn];
    
    [useBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_quanCountLabel.mas_right).mas_offset(10);
        make.centerY.mas_equalTo(_quanCountLabel);
        make.height.mas_equalTo(20);
        make.width.mas_equalTo(70);
    }];
    
    
    
    
    
    
    UIButton *baoBtn = [[UIButton alloc] init];
    [baoBtn setTitle:@"钱包" forState:UIControlStateNormal];
    [baoBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    baoBtn.titleLabel.font = systemFont(16);
    [baoBtn setTitleColor:HEXColor(@"#333333") forState:UIControlStateNormal];
    [baoView addSubview:baoBtn];
    
    [baoBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(baoView).mas_offset(8);
        make.height.mas_equalTo(20);
    }];
    
    //钱包余额
    [baoView addSubview:self.baoMoneyLabel];
    [_baoMoneyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(baoBtn);
        make.top.mas_equalTo(baoBtn.mas_bottom).mas_offset(8);
        make.height.mas_equalTo(_quanCountLabel);
    }];
    
    
    //立即使用优惠券
    UIButton *inBtn = [[UIButton alloc] init];
    [inBtn setTitle:@"我要充值" forState:UIControlStateNormal];
    inBtn.backgroundColor = [UIColor whiteColor];
    inBtn.layer.cornerRadius = 4;
    inBtn.clipsToBounds = YES;
    inBtn.layer.borderColor = HEXColor(@"#10AEFF").CGColor;
    inBtn.layer.borderWidth = 0.5;
    inBtn.titleLabel.font = systemFont(12);
    [inBtn setTitleColor:HEXColor(@"#10AEFF") forState:UIControlStateNormal];
    [baoView addSubview:inBtn];
    
    [inBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_baoMoneyLabel.mas_right).mas_offset(10);
        make.centerY.mas_equalTo(_baoMoneyLabel);
        make.height.mas_equalTo(20);
        make.width.mas_equalTo(70);
    }];
   
}
- (UILabel *)nameLabel {
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.font = systemFont(12);
        _nameLabel.textColor = HEXColor(@"#333333");
        _nameLabel.text = @"13765105102";
    }
    return _nameLabel;
}
- (UILabel *)quanCountLabel {
    if (!_quanCountLabel) {
        _quanCountLabel = [[UILabel alloc] init];
        _quanCountLabel.font = systemFont(12);
        _quanCountLabel.textColor = HEXColor(@"#666666");
        _quanCountLabel.text = @"共计 5 张";
    }
    return _quanCountLabel;
}
- (UILabel *)baoMoneyLabel {
    if (!_baoMoneyLabel) {
        _baoMoneyLabel = [[UILabel alloc] init];
        _baoMoneyLabel.font = systemFont(12);
        _baoMoneyLabel.textColor = HEXColor(@"#666666");
        _baoMoneyLabel.text = @"余额 ¥5.00";
    }
    return _baoMoneyLabel;
}
- (UILabel *)logintimeLabel {
    if (!_logintimeLabel) {
        _logintimeLabel = [[UILabel alloc] init];
        _logintimeLabel.font = systemFont(12);
        _logintimeLabel.textColor = HEXColor(@"#666666");
        _logintimeLabel.text = @"最近登录：2019-07-31 23:59:59";
    }
    return _logintimeLabel;
}
- (UIImageView *)headIv {
    if (!_headIv) {
        _headIv = [[UIImageView alloc] init];
        _headIv.backgroundColor = HEXColor(@"#666666");
        _headIv.contentMode = UIViewContentModeScaleAspectFill;
        _headIv.layer.cornerRadius = 23;
        _headIv.clipsToBounds = YES;
    }
    return _headIv;
}
- (UIImageView *)arrowIv {
    if (!_arrowIv) {
        _arrowIv = [[UIImageView alloc] init];
    }
    return _arrowIv;
}
@end

