//
//  ViewController.m
//  CABasicAnimation
//
//  Created by 浙大网新中研软件 on 2019/9/17.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

#import "ViewController.h"
#import "RotateViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.title = @"基本动画";
    [self setButton];
}
- (void)setButton{
    UIButton *rotateButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 150, 150, 40)];
    rotateButton.backgroundColor = [UIColor greenColor];
    [rotateButton setTitle:@"旋转" forState:UIControlStateNormal];
    [rotateButton addTarget:self action:@selector(rotateAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rotateButton];
}
- (void)rotateAction{
    RotateViewController *rotateVc = [[RotateViewController alloc] init];
    [self.navigationController pushViewController:rotateVc animated:YES];
}
@end
