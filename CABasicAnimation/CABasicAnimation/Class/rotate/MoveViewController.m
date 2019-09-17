//
//  MoveViewController.m
//  CABasicAnimation
//
//  Created by 浙大网新中研软件 on 2019/9/17.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

#import "MoveViewController.h"

@interface MoveViewController ()
@property (nonatomic , strong) UIImageView *imageView;
@end

@implementation MoveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"移动";
    self.view.backgroundColor = [UIColor whiteColor];
    //设置图片位置
    self.imageView = [[UIImageView alloc] init];
    self.imageView.frame = CGRectMake(100, 100, 90, 90);
    self.imageView.image = [UIImage imageNamed:@"feed_image_smallicon"];
    [self.view addSubview:self.imageView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    
    CGPoint point = [touch locationInView:self.view];
    //移动动画
    [self moveAnimation:point];
    
    [self zoomAnimation];
}
- (void)moveAnimation:(CGPoint)point{
    //设置基本动画旋转
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    //动画执行时间
    basicAnimation.duration = 1.0;
    //动画开始位置
    basicAnimation.fromValue = [NSValue valueWithCGPoint:self.imageView.layer.presentationLayer.position];
    //动画结束位置
    basicAnimation.toValue =[NSValue valueWithCGPoint:point];
    
    //动画的执行速度
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    //动画完成时是否删除
    basicAnimation.removedOnCompletion = NO;
    //动画完成时是否保持状态
    basicAnimation.fillMode = kCAFillModeForwards;
    [self.imageView.layer addAnimation:basicAnimation forKey:@"positionAnimation"];
}
-(void)zoomAnimation{
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    //动画执行时间
    basicAnimation.duration = 1.0;
    
    //动画结束位置
    basicAnimation.toValue =@(1.2);
    
    //动画的执行速度
    basicAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    //动画完成时是否删除
    basicAnimation.removedOnCompletion = NO;
    //动画完成时是否保持状态
    basicAnimation.fillMode = kCAFillModeForwards;
    [self.imageView.layer addAnimation:basicAnimation forKey:@"zoom"];
}
@end
