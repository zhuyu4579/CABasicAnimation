//
//  WaveViewController.m
//  CABasicAnimation
//
//  Created by 浙大网新中研软件 on 2019/9/18.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

#import "WaveViewController.h"

@interface WaveViewController ()
//绘画
@property(nonatomic,weak)CAShapeLayer *shapeLayer;
//水波高度
@property(nonatomic,assign)CGFloat waveHeight;
//Y轴的高度
@property(nonatomic,assign)CGFloat height_Y;
//X轴的偏移量
@property(nonatomic,assign)CGFloat offset_X;
@end

@implementation WaveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"水波动画";
    self.view.backgroundColor = [UIColor whiteColor];
    //新建绘图工具
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    //设置填充颜色
    shapeLayer.fillColor = [[UIColor colorWithRed:86/255.0f green:202/255.0f blue:139/255.0f alpha:0.3] CGColor];
    
    //设置线的宽度
    shapeLayer.lineWidth = 1;
    
    //设置边界的颜色
    shapeLayer.strokeColor = [[UIColor colorWithRed:86/255.0f green:202/255.0f blue:139/255.0f alpha:0.3] CGColor];
    
    [self.view.layer addSublayer:shapeLayer];
    self.shapeLayer = shapeLayer;
    
    
}
//绘制波纹
-(void)drawWave{
    //绘制图层的路径
    CGMutablePathRef wavePath = CGPathCreateMutable();
    //绘制路径的起始位置
    CGPathMoveToPoint(wavePath, NULL, 0, self.waveHeight);
    
    CGFloat y = 0.f;
    //y=Asin（ωx+φ）+h
    //路径最大的宽度，屏幕的高度
    CGFloat pathWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat pathHeight = [UIScreen mainScreen].bounds.size.height;
    //画点
    for (float x = 0.0; x <= pathWidth; <#increment#>) {
        <#statements#>
    }
    
}

@end
