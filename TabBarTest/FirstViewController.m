
//
//  FirstViewController.m
//  TabBarTest
//
//  Created by macbook on 16/5/20.
//  Copyright © 2016年 ymq. All rights reserved.
//

#import "FirstViewController.h"
#import "ViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (instancetype)init
{
    UIBarButtonItem *settingItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(didClickBarButton)];
    settingItem.tintColor = [UIColor whiteColor];
    if (self = [super initWithTitle:@"这是标题" leftBarButtonItems:nil rightBarButtonItems:@[settingItem]]) {
        self.tabBarItem.title = @"首页";
        self.tabBarItem.image = ImageName(@"");
        self.tabBarItem.selectedImage = ImageName(@"");
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didClickBarButton
{
    [self.navigationController pushViewController:[ViewController new] animated:YES];
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
