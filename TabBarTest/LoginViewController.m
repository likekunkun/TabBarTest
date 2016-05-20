//
//  LoginViewController.m
//  TabBarTest
//
//  Created by macbook on 16/5/20.
//  Copyright © 2016年 ymq. All rights reserved.
//

#import "LoginViewController.h"
#import "BaseNavigationViewController.h"
#import "RootViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 30);
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"登陆" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(didClickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)didClickButton
{
    [UserDefault setObject:@"1" forKey:@"isLogin"];
    [self performSelector:@selector(toMain) withObject:nil afterDelay:1];
}

- (void)toMain
{
    BaseNavigationViewController *controller = [[BaseNavigationViewController alloc] initWithRootViewController:[RootViewController new]];
    [self presentViewController:controller animated:NO completion:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
