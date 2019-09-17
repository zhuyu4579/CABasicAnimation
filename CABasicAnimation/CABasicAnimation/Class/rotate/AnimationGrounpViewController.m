//
//  AnimationGrounpViewController.m
//  CABasicAnimation
//
//  Created by 浙大网新中研软件 on 2019/9/17.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

#import "AnimationGrounpViewController.h"

@interface AnimationGrounpViewController ()
@property (nonatomic , strong) UIImageView *imageView;
@end

@implementation AnimationGrounpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"动画组";
    self.view.backgroundColor = [UIColor whiteColor];
    //设置图片位置
    self.imageView = [[UIImageView alloc] init];
    self.imageView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2.0-45, [UIScreen mainScreen].bounds.size.height/2.0-45, 90, 90);
    self.imageView.image = [UIImage imageNamed:@"feed_image_smallicon"];
    [self.view addSubview:self.imageView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
   
    //动画开始位置
    basicAnimation.fromValue = 0;
    //动画结束位置
    basicAnimation.toValue =@(M_PI*2);
   
    //动画的执行速度
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    //动画完成时是否删除
    basicAnimation.removedOnCompletion = NO;
    //动画完成时是否保持状态
    basicAnimation.fillMode = kCAFillModeBackwards;
    
    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
    [bezierPath moveToPoint: CGPointMake(175, 100)];
    [bezierPath addCurveToPoint:CGPointMake(175, 500) controlPoint1:CGPointMake(90, 200) controlPoint2:CGPointMake(270, 400)];
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.path = bezierPath.CGPath;
    animation.keyPath = @"position";
    
    
    CAAnimationGroup *animGroup = [CAAnimationGroup animation];
    animGroup.animations = @[basicAnimation,animation];
    animGroup.duration = 2.0;
    animGroup.repeatCount = LONG_MAX;
    animGroup.autoreverses = YES;
    [self.imageView.layer addAnimation:animGroup forKey:nil];
}

@end
