//
//  RotateViewController.m
//  CABasicAnimation
//
//  Created by 浙大网新中研软件 on 2019/9/17.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()
@property (nonatomic , strong) UIImageView *imageView;
@end

@implementation RotateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.title = @"旋转";
    self.view.backgroundColor = [UIColor whiteColor];
    //设置图片位置
    self.imageView = [[UIImageView alloc] init];
    self.imageView.frame = CGRectMake(100, 100, 180, 180);
    self.imageView.image = [UIImage imageNamed:@"feed_image_smallicon"];
    [self.view addSubview:self.imageView];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //设置基本动画旋转
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //动画执行时间
    basicAnimation.duration = 5.0;
    //动画开始位置
    basicAnimation.fromValue = 0;
    //动画结束位置
    basicAnimation.toValue =@(M_PI*2);
    //动画的执行次数
    basicAnimation.repeatCount = LONG_MAX;
    //动画的执行速度
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    //动画完成时是否删除
    basicAnimation.removedOnCompletion = NO;
    //动画完成时是否保持状态
    basicAnimation.fillMode = kCAFillModeBackwards;
    [self.imageView.layer addAnimation:basicAnimation forKey:@"positionAnimation"];
    
    
}

@end
