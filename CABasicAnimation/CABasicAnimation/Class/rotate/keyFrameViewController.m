//
//  keyFrameViewController.m
//  CABasicAnimation
//
//  Created by 浙大网新中研软件 on 2019/9/17.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

#import "keyFrameViewController.h"

@interface keyFrameViewController ()
@property (nonatomic , strong) UIImageView *imageView;
@end

@implementation keyFrameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"贝赛斯曲线";
    self.view.backgroundColor = [UIColor whiteColor];
    //设置图片位置
    self.imageView = [[UIImageView alloc] init];
    self.imageView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2.0-45, [UIScreen mainScreen].bounds.size.height/2.0-45, 90, 90);
    self.imageView.image = [UIImage imageNamed:@"feed_image_smallicon"];
    [self.view addSubview:self.imageView];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self bezierPath];
    [self bezierPathTwo];
    
}
-(void)clcyePath{
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithArcCenter    :self.imageView.center radius:100 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.path = bezierPath.CGPath;
    animation.keyPath = @"position";
    animation.duration = 2;
    animation.repeatCount = LONG_MAX;
    animation.autoreverses = YES;
    [self.imageView.layer addAnimation:animation forKey:@"key"];
}

//绘制贝塞斯曲线
-(void)bezierPath{
    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
    [bezierPath moveToPoint: CGPointMake(0, 200)];
    [bezierPath addCurveToPoint:CGPointMake(370, 200) controlPoint1:CGPointMake(90, 100) controlPoint2:CGPointMake(270, 300)];
    //路径样式
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = bezierPath.CGPath;
    shapeLayer.fillColor = [UIColor clearColor].CGColor; //填充色<默认黑色>
    shapeLayer.strokeColor = [UIColor blueColor].CGColor; //线色
    shapeLayer.lineWidth = 2;
    [self.view.layer addSublayer:shapeLayer];
}
-(void)bezierPathTwo{
    //三次贝赛斯曲线
    UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
    [bezierPath moveToPoint: CGPointMake(175, 100)];
    [bezierPath addCurveToPoint:CGPointMake(175, 500) controlPoint1:CGPointMake(90, 200) controlPoint2:CGPointMake(270, 400)];
    //路径样式
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = bezierPath.CGPath;
    shapeLayer.fillColor = [UIColor clearColor].CGColor; //填充色<默认黑色>
    shapeLayer.strokeColor = [UIColor blueColor].CGColor; //线色
    shapeLayer.lineWidth = 2;
    [self.view.layer addSublayer:shapeLayer];
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.path = bezierPath.CGPath;
    animation.keyPath = @"position";
    animation.duration = 2;
    animation.repeatCount = LONG_MAX;
    animation.autoreverses = YES;
    [self.imageView.layer addAnimation:animation forKey:@"key"];
}
@end
