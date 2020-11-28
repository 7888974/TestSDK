//
//  ViewController.m
//  ShiroSDKNew
//
//  Created by ShiroJoy on 2020/11/25.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "ViewController.h"
#import "NetworkTools.h"
#import "BaseLoginMainViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = UIColor.grayColor;
    [btn setTitle:@"click" forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(click:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 50));
    }];
    
//    NSDictionary*dic = @{@"phone_num":@"15530328679"};
//
//    [[NetworkTools sharedTools] request:POST URLString:@"phone/register" param:dic headers:nil finished:^(id  _Nonnull response, NSError * _Nonnull error) {
//        if (!error) {
//            NSLog(@"response:%@",response);
//            return;
//        }
//        NSLog(@"error:%@",error);
//    }];
    
}

-(void)click:(UIButton *)btn
{
    /**
     UIModalPresentationFullScreen = 0,
     UIModalPresentationPageSheet API_AVAILABLE(ios(3.2)) API_UNAVAILABLE(tvos),
     UIModalPresentationFormSheet API_AVAILABLE(ios(3.2)) API_UNAVAILABLE(tvos),
     UIModalPresentationCurrentContext API_AVAILABLE(ios(3.2)),
     UIModalPresentationCustom API_AVAILABLE(ios(7.0)),
     UIModalPresentationOverFullScreen API_AVAILABLE(ios(8.0)),
     UIModalPresentationOverCurrentContext API_AVAILABLE(ios(8.0)),
     UIModalPresentationPopover API_AVAILABLE(ios(8.0)) API_UNAVAILABLE(tvos),
     UIModalPresentationBlurOverFullScreen API_AVAILABLE(tvos(11.0)) API_UNAVAILABLE(ios) API_UNAVAILABLE(watchos),
     UIModalPresentationNone API_AVAILABLE(ios(7.0)) = -1,
     UIModalPresentationAutomatic API_AVAILABLE(ios(13.0)) = -2,
     */
//    BaseLoginMainViewController *base = BaseLoginMainViewController.new;
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"BaseLoginMainViewController" bundle:nil];
    [self presentViewController:[sb instantiateInitialViewController] animated:YES completion:nil];

}


@end
