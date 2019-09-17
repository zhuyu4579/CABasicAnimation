//
//  ViewController.m
//  CABasicAnimation
//
//  Created by 浙大网新中研软件 on 2019/9/17.
//  Copyright © 2019 浙大网新中研软件. All rights reserved.
//

#import "ViewController.h"
#import "RotateViewController.h"
#import "MoveViewController.h"
#import "keyFrameViewController.h"
#import "TransitonViewController.h"
#import "AnimationGrounpViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"核心动画";
    [self setButton];
}
- (void)setButton{
    UILabel *labelOne = [[UILabel alloc] initWithFrame:CGRectMake(120, 100, 150, 14)];
    labelOne.text = @"基本动画";
    labelOne.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:labelOne];
    UIButton *rotateButton = [[UIButton alloc] initWithFrame:CGRectMake(120, 150, 150, 40)];
    rotateButton.backgroundColor = [UIColor greenColor];
    [rotateButton setTitle:@"旋转" forState:UIControlStateNormal];
    [rotateButton addTarget:self action:@selector(rotateAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rotateButton];
    
    UIButton *moveButton = [[UIButton alloc] initWithFrame:CGRectMake(120, 200, 150, 40)];
    moveButton.backgroundColor = [UIColor greenColor];
    [moveButton setTitle:@"移动" forState:UIControlStateNormal];
    [moveButton addTarget:self action:@selector(moveAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:moveButton];
    
    UILabel *labelTwo = [[UILabel alloc] initWithFrame:CGRectMake(120, moveButton.frame.origin.y+60, 150, 14)];
    labelTwo.text = @"关键帧动画";
    labelTwo.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:labelTwo];
    
    UIButton *keyFrameButton = [[UIButton alloc] initWithFrame:CGRectMake(120, labelTwo.frame.origin.y+30, 150, 40)];
    keyFrameButton.backgroundColor = [UIColor greenColor];
    [keyFrameButton setTitle:@"贝赛尔曲线" forState:UIControlStateNormal];
    [keyFrameButton addTarget:self action:@selector(keyFrameAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:keyFrameButton];
    
    UILabel *labelThree = [[UILabel alloc] initWithFrame:CGRectMake(120, keyFrameButton.frame.origin.y+60, 150, 14)];
    labelThree.text = @"动画组";
    labelThree.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:labelThree];
    
    UIButton *grounpButton = [[UIButton alloc] initWithFrame:CGRectMake(120, labelThree.frame.origin.y+30, 150, 40)];
    grounpButton.backgroundColor = [UIColor greenColor];
    [grounpButton setTitle:@"动画组" forState:UIControlStateNormal];
    [grounpButton addTarget:self action:@selector(grounpAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:grounpButton];
    
    UILabel *labelFour= [[UILabel alloc] initWithFrame:CGRectMake(120, grounpButton.frame.origin.y+60, 150, 14)];
    labelFour.text = @"转场动画";
    labelFour.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:labelFour];
    
    UIButton *transitonButton = [[UIButton alloc] initWithFrame:CGRectMake(120, labelFour.frame.origin.y+30, 150, 40)];
    transitonButton.backgroundColor = [UIColor greenColor];
    [transitonButton setTitle:@"转场动画" forState:UIControlStateNormal];
    [transitonButton addTarget:self action:@selector(transitonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:transitonButton];
}
- (void)transitonAction{
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
    transiont.type =@"rippleEffect";
    transiont.subtype = @"fromBottom";
    transiont.duration = 0.5;
    TransitonViewController *keyVc = [[TransitonViewController alloc] init];
    [self.navigationController pushViewController:keyVc animated:YES];
    [self.navigationController.view.layer addAnimation:transiont forKey:nil];
}
- (void)grounpAction{
    AnimationGrounpViewController *keyVc = [[AnimationGrounpViewController alloc] init];
    [self.navigationController pushViewController:keyVc animated:YES];
}
- (void)keyFrameAction{
    keyFrameViewController *keyVc = [[keyFrameViewController alloc] init];
    [self.navigationController pushViewController:keyVc animated:YES];
}
- (void)moveAction{
    MoveViewController *moveVc = [[MoveViewController alloc] init];
    [self.navigationController pushViewController:moveVc animated:YES];
}
- (void)rotateAction{
    RotateViewController *rotateVc = [[RotateViewController alloc] init];
    [self.navigationController pushViewController:rotateVc animated:YES];
}
@end
