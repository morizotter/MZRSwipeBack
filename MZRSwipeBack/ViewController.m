//
//  ViewController.m
//  MZRSwipeBack
//
//  Created by Morita Naoki on 2013/04/21.
//  Copyright (c) 2013年 molabo. All rights reserved.
//

#import "ViewController.h"

#import "UIViewController+SwipeBack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setExampleLook];
    
    // swipe back
    [self addSwipeBackGesture];
}

// for example
- (void)setExampleLook
{
    NSUInteger index = [self.navigationController.viewControllers indexOfObject:self];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 120, 300, 50)];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont boldSystemFontOfSize:50.0];
    label.text = [NSString stringWithFormat:@"%d",index];
    [self.view addSubview:label];
    
    NSArray *colors = @[[UIColor redColor],[UIColor yellowColor],[UIColor greenColor],[UIColor blueColor],[UIColor purpleColor]];
    int r = arc4random_uniform(colors.count);
    self.view.backgroundColor = colors[r];
}

// for example
- (IBAction)nextButtonTapped:(UIButton *)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    ViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"viewController"];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
