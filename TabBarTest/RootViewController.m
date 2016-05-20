//
//  RootViewController.m
//  TabBarTest
//
//  Created by macbook on 16/5/20.
//  Copyright © 2016年 ymq. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UITabBarControllerDelegate>

@end

@implementation RootViewController

- (void)dealloc
{
    [NotificationCenter removeObserver:self name:NotificationTabDidChanged object:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.tintColor = [UIColor blueColor];
    
    [NotificationCenter addObserver:self selector:@selector(tabBarDidChange:) name:NotificationTabDidChanged object:nil];
    
    [self initControllers];
    self.delegate = self;
}

- (void)initControllers
{
    NSArray *tabControllerNames = @[@"FirstViewController",
                                    @"SecondViewController",
                                    @"ThirdViewController",
                                    @"FourthViewController"];
    NSMutableArray *tabControllers = @[].mutableCopy;
    [tabControllerNames enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSString *controllerName = obj;
        Class class = NSClassFromString(controllerName);
        if (class) {
            [tabControllers addObject:[class new]];
        }
    }];
    
    self.viewControllers = tabControllers;
    
}

- (void)tabBarDidChange:(NSNotification *)notification
{
    NSDictionary *dic = notification.object;
    self.title = [dic objectForKey:@"title"];
    self.navigationItem.rightBarButtonItems = [dic objectForKey:@"rightBarButtonItems"];
    self.navigationItem.leftBarButtonItems = [dic objectForKey:@"leftBarButtonItems"];
    
}

//- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
//{
//
//    return YES;
//}

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
