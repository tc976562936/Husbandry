//
//  HThirdLoginView.m
//  Husbandry
//
//  Created by edz on 2020/3/15.
//  Copyright © 2020 husbandry. All rights reserved.
//

#import "HThirdLoginView.h"

@implementation HThirdLoginView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.axis = UILayoutConstraintAxisHorizontal;
        self.alignment = UIStackViewAlignmentFill;
        self.distribution = UIStackViewDistributionFillEqually;
        self.spacing = 40;
        NSArray *titles = @[@"微信登录",@"QQ登录",@"微博登录"];
        for (int i = 0; i < titles.count; i++) {
            UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectMake((SCREEN_WIDTH / 3) * i, 0, SCREEN_WIDTH / 3, 40)];
            [loginBtn setTitle:titles[i] forState:UIControlStateNormal];
            [loginBtn setTitleColor:HEXColor(@"#999999") forState:UIControlStateNormal];
            [loginBtn setTitleColor:themeColor forState:UIControlStateSelected];
            loginBtn.titleLabel.font = systemFont(16);
            loginBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
            [loginBtn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
            [self addArrangedSubview:loginBtn];
        }
    }
    return self;
}

@end
