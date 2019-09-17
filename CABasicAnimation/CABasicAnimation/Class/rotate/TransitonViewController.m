//
//  TransitonViewController.m
//  CABasicAnimation
//
//  Created by 浙大网新中研软件 on 2019/9/17.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

#import "TransitonViewController.h"

@interface TransitonViewController ()
@property (nonatomic , strong) UIImageView *imageView;
@end

@implementation TransitonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"转场动画";
    self.view.backgroundColor = [UIColor whiteColor];
    //设置图片位置
    self.imageView = [[UIImageView alloc] init];
    self.imageView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2.0-45, [UIScreen mainScreen].bounds.size.height/2.0-45, 90, 90);
    self.imageView.image = [UIImage imageNamed:@"feed_image_smallicon"];
    [self.view addSubview:self.imageView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CATransition *transiont = [CATransition animation];
    /**
     fade ,                   //淡入淡出
     push,                       //推挤
     reveal,                     //揭开
     moveIn,                     //覆盖
     cube,                       //立方体
     suckEffect,                 //吮吸
     oglFlip,                    //翻转
     rippleEffect,               //波纹(水滴)
     pageCurl,                   //翻页
     pageUnCurl,                 //反翻页
     cameraIrisHollowOpen,       //开镜头
     cameraIrisHollowClose,      //关镜头
     */
    transiont.type =@"fade";
    transiont.subtype = @"fromBottom";
    transiont.duration = 0.5;
    
}

@end
