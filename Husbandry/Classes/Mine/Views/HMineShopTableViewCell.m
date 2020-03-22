//
//  HMineShopTableViewCell.m
//  Husbandry
//
//  Created by edz on 2020/3/22.
//  Copyright © 2020 husbandry. All rights reserved.
//

#import "HMineShopTableViewCell.h"
@interface HMineShopTableViewCell()

@property (nonatomic,strong) UILabel *typeTitle; //标题
@property (nonatomic,strong) UIButton *rightBtn; //管理地址

@property (nonatomic,strong) UIImageView *headIv;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *logintimeLabel; //最近登录时间
@property (nonatomic,strong) UIImageView *arrowIv;
@property (nonatomic,strong) UILabel *quanCountLabel; //优惠券个数
@property (nonatomic,strong) UILabel *baoMoneyLabel; //钱包余额

@end
@implementation HMineShopTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}
- (void)setupUI {
    [self.contentView addSubview:self.typeTitle];
    [_typeTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.contentView).mas_offset(20);
        make.left.mas_equalTo(self.contentView).mas_offset(12);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(16);
    }];
    
    [self.contentView addSubview:self.rightBtn];
    [_rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(_typeTitle);
        make.right.mas_equalTo(self.contentView).mas_offset(-12);
        make.width.mas_equalTo(55);
        make.height.mas_equalTo(12);
    }];
    NSArray *titles = @[@"商品收藏",@"店铺关注",@"浏览足迹",@"购物车"];
    
    UIStackView *stackView = [[UIStackView alloc] init];
    stackView.axis = UILayoutConstraintAxisHorizontal;
    stackView.alignment = UIStackViewAlignmentFill;
    stackView.distribution = UIStackViewDistributionFillEqually;
    [self.contentView addSubview:stackView];
    
    [stackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_typeTitle.mas_bottom).mas_offset(20);
        make.left.mas_equalTo(_typeTitle);
        make.right.mas_equalTo(_rightBtn);
        make.height.mas_equalTo(40);
    }];

    for (int i = 0; i < titles.count; i++) {
        UIView *subView = [[UIView alloc] init];
        UILabel *topL = [[UILabel alloc] init];
        topL.text = titles[i];
        topL.textColor = HEXColor(@"#333333");
        topL.font = systemFont(16);
        topL.textAlignment = NSTextAlignmentCenter;
        [subView addSubview:topL];
        
        [topL mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.mas_equalTo(subView);
            make.height.mas_equalTo(16);
        }];
        
        UILabel *bottomL = [[UILabel alloc] init];
        bottomL.text = titles[i];
        bottomL.textColor = HEXColor(@"#333333");
        bottomL.font = systemFont(12);
        bottomL.textAlignment = NSTextAlignmentCenter;
        [subView addSubview:bottomL];
        
        [bottomL mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(subView);
            make.top.mas_equalTo(topL.mas_bottom).mas_offset(5);
            make.height.mas_equalTo(12);
        }];
        
        [stackView addArrangedSubview:subView];
    }
    
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = MUICommonLineColor;
    [self.contentView addSubview:line];
    
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(self.contentView);
        make.top.mas_equalTo(stackView.mas_bottom).mas_offset(10);
        make.height.mas_equalTo(1);
    }];
    
    UIStackView *stackView2 = [[UIStackView alloc] init];
    stackView2.axis = UILayoutConstraintAxisHorizontal;
    stackView2.alignment = UIStackViewAlignmentFill;
    stackView2.distribution = UIStackViewDistributionFillEqually;
    [self.contentView addSubview:stackView2];
       
    [stackView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(line.mas_bottom).mas_offset(20);
        make.left.mas_equalTo(_typeTitle);
        make.right.mas_equalTo(_rightBtn);
        make.height.mas_equalTo(50);
    }];
    NSArray *bottomTitles = @[@"待付款",@"待发货",@"待收获",@"评价"];
    for (int i = 0; i < bottomTitles.count; i++) {
       QMUIButton *subBtn = [[QMUIButton alloc] init];
       [subBtn setTitle:bottomTitles[i] forState:UIControlStateNormal];
       subBtn.imagePosition = QMUIButtonImagePositionTop;
       subBtn.spacingBetweenImageAndTitle = 6;
       [subBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
       [subBtn setTitleColor:HEXColor(@"#333333") forState:UIControlStateNormal];
       subBtn.titleLabel.font = systemFont(12);
       [stackView2 addArrangedSubview:subBtn];
    }
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

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
- (UILabel *)typeTitle {
    if (!_typeTitle) {
        _typeTitle = [[UILabel alloc] init];
        _typeTitle.font = systemFont(16);
        _typeTitle.textColor = themeColor;
        _typeTitle.text = @"我的商城";
        _typeTitle.textAlignment = NSTextAlignmentLeft;
    }
    return _typeTitle;
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
- (UIButton *)rightBtn {
    if (!_rightBtn) {
        _rightBtn = [[UIButton alloc] init];
        [_rightBtn setTitle:@"管理地址" forState:UIControlStateNormal];
        [_rightBtn setTitleColor:HEXColor(@"#666666") forState:UIControlStateNormal];
        _rightBtn.titleLabel.font = systemFont(12);
    }
    return _rightBtn;
}
@end
