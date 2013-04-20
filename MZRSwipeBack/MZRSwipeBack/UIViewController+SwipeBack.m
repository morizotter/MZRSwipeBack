//
//  UIViewController+SwipeBack.m
//  NearStations
//
//  Created by Morita Naoki on 2013/04/21.
//  Copyright (c) 2013年 molabo. All rights reserved.
//

#import "UIViewController+SwipeBack.h"

// swipe back function is enabled or not.
BOOL const swipeBackEnabled = YES;

@implementation UIViewController (SwipeBack)

- (void)addSwipeBackGesture
{
    UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeBack:)];
    swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeGestureRecognizer];
}

- (void)swipeBack:(UISwipeGestureRecognizer *)sender
{
    if (!swipeBackEnabled) return;
    
    NSUInteger index = [self.navigationController.viewControllers indexOfObject:self];
    if (index==0) return;
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
