//
//  BaseViewController.h
//  TabBarTest
//
//  Created by macbook on 16/5/20.
//  Copyright © 2016年 ymq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) NSMutableDictionary *barItem;

- (instancetype)initWithTitle:(NSString *)title
           leftBarButtonItems:(NSArray *)leftBarButtonItems
          rightBarButtonItems:(NSArray *)rightBarButtonItems;

@end
