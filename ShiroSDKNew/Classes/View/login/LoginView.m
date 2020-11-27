//
//  LoginView.m
//  ShiroSDKNew
//
//  Created by ShiroJoy on 2020/11/25.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "LoginView.h"

@interface LoginView()

@property(nonatomic, strong) UIView *bgView;

@end

@implementation LoginView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupUI];
    }
    return self;
}


-(void)setupUI{
    
    self.backgroundColor = UIColor.clearColor;
    
    NSLog(@"s%@",self.bgView);
    
}

//- (void)updateConstraints{
//
//    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self);
//        make.size.mas_equalTo(MainViewSize);
//    }];
//    [super updateConstraints];
//}

- (UIView *)bgView{
    if (!_bgView) {
        _bgView = UIView.new;
        _bgView.backgroundColor = MainViewColor;
        [self addSubview:_bgView];
        
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self);
            make.size.mas_equalTo(MainViewSize);
        }];
    }
    return _bgView;
}

@end
