//
//  HLoginViewController.m
//  Husbandry
//
//  Created by edz on 2020/3/15.
//  Copyright © 2020 husbandry. All rights reserved.
//

#import "HLoginViewController.h"
#import "MTabBarViewController.h"
@interface HLoginViewController()<UITextFieldDelegate>

@property(nonatomic,strong)QMUITextField *phoneTf;

@property(nonatomic,strong)QMUITextField *passwordTf;

@property(nonatomic,weak)QMUIButton *loginBtn;

@property(nonatomic,weak)UIView *line2;

@property(nonatomic,weak)UIView *line1;
@end

@implementation HLoginViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    QMUIButton *backBtn = [[QMUIButton alloc] init];
    [backBtn setTitle:@"x" forState:UIControlStateNormal];
    //[backBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    backBtn.titleLabel.font = systemFont(20);
    [backBtn setTitleColor:HEXColor(@"#666666") forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    backBtn.hidden = YES;
    [self.view addSubview:backBtn];
    
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.view).mas_offset(-37);
        make.top.mas_equalTo(self.view).mas_offset(50);
        make.width.height.mas_equalTo(30);
    }];
    
    
    UILabel *hintLabel = [[UILabel alloc] init];
    hintLabel.text = @"账号登录";
    hintLabel.textColor = HEXColor(@"#333333");
    hintLabel.font = systemFont(20);
    hintLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:hintLabel];
    
    [hintLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).mas_equalTo(37);
        make.top.mas_equalTo(self.view).mas_equalTo(152);
        make.width.mas_equalTo(168);
        make.height.mas_equalTo(20);
    }];

    
    QMUIButton *prefixCodeBtn = [[QMUIButton alloc] init];
    prefixCodeBtn.imagePosition = QMUIButtonImagePositionRight;
    prefixCodeBtn.spacingBetweenImageAndTitle = 3;
    [prefixCodeBtn setTitle:@"+86" forState:UIControlStateNormal];
    [prefixCodeBtn setImage:[UIImage imageNamed:@"rightA"] forState:UIControlStateNormal];
    [prefixCodeBtn setTitleColor:HEXColor(@"#333333") forState:UIControlStateNormal];
    prefixCodeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:prefixCodeBtn];
    
    [prefixCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(hintLabel);
        make.top.mas_equalTo(hintLabel.mas_bottom).offset(30);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(40);
    }];
    
    [self.view addSubview:self.phoneTf];
    [_phoneTf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(prefixCodeBtn);
        make.left.mas_equalTo(prefixCodeBtn.mas_right).mas_offset(8);
        make.height.mas_equalTo(40);;
        make.right.mas_equalTo(self.view).mas_offset(-37);
    }];
        
    UIView *line1 = [[UIView alloc] init];
    line1.backgroundColor = MUICommonLineColor;
    self.line1 = line1;
    [self.view addSubview:line1];
    
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).mas_offset(37);
        make.right.mas_equalTo(self.view).mas_offset(-37);
        make.top.mas_equalTo(prefixCodeBtn.mas_bottom).offset(15);
        make.height.mas_equalTo(1);
    }];
    
    [self.view addSubview:self.passwordTf];
    [_passwordTf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(line1.mas_bottom).mas_offset(20);
        make.left.mas_equalTo(line1);
        make.height.mas_equalTo(_phoneTf);;
        make.right.mas_equalTo(line1);
    }];
    
    UIView *line2 = [[UIView alloc] init];
    line2.backgroundColor = MUICommonLineColor;
    [self.view addSubview:line2];
    self.line2 = line2;
    [line2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).mas_offset(37);
        make.right.mas_equalTo(self.view).mas_offset(-37);
        make.top.mas_equalTo(_passwordTf.mas_bottom).offset(15);
        make.height.mas_equalTo(1);
    }];
    
    QMUIButton *loginBtn = [[QMUIButton alloc] init];
    loginBtn.backgroundColor = HEXColor(@"#666666");
    loginBtn.layer.cornerRadius = 5;
    loginBtn.clipsToBounds = YES;
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    loginBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [loginBtn addTarget:self action:@selector(loginAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    self.loginBtn = loginBtn;
    
    [loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(line2.mas_bottom).mas_offset(15);
        make.left.mas_equalTo(line1);
        make.height.mas_equalTo(45);
        make.right.mas_equalTo(line1);
    }];
    
    
    QMUIButton *forgetBtn = [[QMUIButton alloc] init];
    [forgetBtn setTitle:@"忘记密码？" forState:UIControlStateNormal];
    [forgetBtn setTitleColor:HEXColor(@"#333333") forState:UIControlStateNormal];
    forgetBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [forgetBtn addTarget:self action:@selector(forgetAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:forgetBtn];
    
    [forgetBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(loginBtn.mas_bottom).mas_offset(25);
        make.centerX.mas_equalTo(loginBtn);
        make.height.mas_equalTo(12);
        make.width.mas_equalTo(90);
    }];
    
    QMUIButton *smsLoginBtn = [[QMUIButton alloc] init];
    [smsLoginBtn setTitle:@"短信登录" forState:UIControlStateNormal];
    [smsLoginBtn setTitleColor:HEXColor(@"#333333") forState:UIControlStateNormal];
    smsLoginBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:smsLoginBtn];

    [smsLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.height.width.mas_equalTo(forgetBtn);
        make.left.mas_equalTo(line1);
    }];
    
    QMUIButton *registeredLoginBtn = [[QMUIButton alloc] init];
    [registeredLoginBtn setTitleColor:themeColor forState:UIControlStateNormal];
    registeredLoginBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [registeredLoginBtn setTitle:@"立即注册" forState:UIControlStateNormal];
    [self.view addSubview:registeredLoginBtn];
    
    [registeredLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.height.width.mas_equalTo(forgetBtn);
        make.right.mas_equalTo(line1);
    }];
}

- (void)backAction:(UIButton *)button {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)forgetAction:(UIButton *)button {
    HLoginViewController *forgetVc = [[HLoginViewController alloc] init];
    [self.navigationController pushViewController:forgetVc animated:YES];
}
- (void)loginAction:(UIButton *)button {
    [UIApplication sharedApplication].keyWindow.rootViewController = [MTabBarViewController new];
}
- (void)textFieldDidChangeSelection:(UITextField *)textField {
    if (_phoneTf.text.length == 11 && _passwordTf.text.length > 0) {
        _loginBtn.backgroundColor = themeColor;
        _loginBtn.userInteractionEnabled = YES;
    } else {
        _loginBtn.backgroundColor = HEXColor(@"#666666");
        _loginBtn.userInteractionEnabled = NO;
    }
}
- (QMUITextField *)phoneTf {
    if (!_phoneTf) {
        _phoneTf = [[QMUITextField alloc] init];
        _phoneTf.placeholder = @"请输入手机号";
        _phoneTf.maximumTextLength = 11;
        _phoneTf.textInsets = UIEdgeInsetsMake(0, 0, 0, 0);
        _phoneTf.placeholderColor = HEXColor(@"#333333");
        _phoneTf.textColor = HEXColor(@"#333333");
        _phoneTf.font = [UIFont systemFontOfSize:16];
        _phoneTf.keyboardType = UIKeyboardTypeNumberPad;
        _phoneTf.delegate = self;
    }
    return _phoneTf;
}

- (QMUITextField *)passwordTf {
    if (!_passwordTf) {
        _passwordTf = [[QMUITextField alloc] init];
        _passwordTf.placeholder = @"请输入密码";
        _passwordTf.textInsets = UIEdgeInsetsMake(0, 0, 0, 0);
        _passwordTf.placeholderColor = HEXColor(@"#333333");
        _passwordTf.textColor = HEXColor(@"#333333");
        _passwordTf.font = [UIFont systemFontOfSize:16];
        _passwordTf.delegate = self;
    }
    return _passwordTf;
}
@end
