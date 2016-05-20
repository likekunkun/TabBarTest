//
//  DMWelcomeViewController.m
//  TabBarTest
//
//  Created by macbook on 16/5/20.
//  Copyright © 2016年 ymq. All rights reserved.
//

#import "WelcomeViewController.h"
#import "BaseNavigationViewController.h"
#import "RootViewController.h"
#import "LoginViewController.h"

#define kDelayTime  1

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor greenColor];
    label.font = [UIFont systemFontOfSize:15];
    label.textColor = [UIColor blueColor];
    label.text = @"启动页";
    [self.view addSubview:label];
    
    self.view.alpha = 0;
    
    [UIView animateWithDuration:.5 animations:^{
        self.view.alpha = 1;
        
    }];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidAppear:(BOOL)animated
{
    //for test
    //    [UserDefault setObject:@"0" forKey:@"isLogin"];
    
    NSString *str = [UserDefault objectForKey:@"isLogin"];
    if ([str isEqualToString:@"0"]) {
        [self performSelector:@selector(toLogin) withObject:self afterDelay:kDelayTime];
    } else {
        
        [self performSelector:@selector(toMain) withObject:self afterDelay:kDelayTime];
    }
}

- (void)toLogin
{
    BaseNavigationViewController *controller = [[BaseNavigationViewController alloc] initWithRootViewController:[LoginViewController new]];
    [self presentViewController:controller animated:NO completion:nil];
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
