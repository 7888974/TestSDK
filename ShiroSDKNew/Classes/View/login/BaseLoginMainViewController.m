//
//  BaseMainViewController.m
//  ShiroSDKNew
//
//  Created by ShiroJoy on 2020/11/25.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "BaseLoginMainViewController.h"
#import "LoginView.h"

@interface BaseLoginMainViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation BaseLoginMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
       
    
}


- (IBAction)CannelBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)ConfirmBtn:(id)sender {
    
    NSLog(@"%@,%@",self.accountTextField.text,self.passwordTextField.text);
}
- (IBAction)PhoneCodeLoginBtn:(id)sender {
}
- (IBAction)ForgetBtn:(id)sender {
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

@end
