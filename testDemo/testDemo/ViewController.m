//
//  ViewController.m
//  testDemo
//
//  Created by Jason on 16/3/31.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *  _imageView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"itms-services://?action=download-manifest&url=https://raw.githubusercontent.com/yanghuaibing1680/epos/master/manifest.plist"]];
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://10.1.33.96/etms/etms/jsp/mobile.jsp"]];
    
//    // Do any additional setup after loading the view, typically from a nib.
//    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 30, 300, 200)];
//    _imageView.center = self.view.center;
//    _imageView.image = [UIImage imageNamed:@"swift.jpg"];
//    
//    [self.view addSubview:_imageView];
//    CAShapeLayer * shapeLayer = [CAShapeLayer layer];
//    CGMutablePathRef pathRef = CGPathCreateMutable();
////    CGPathAddRect(pathRef, nil, CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height));
//    //CGPathAddEllipseInRect(pathRef, nil, CGRectInset(CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.width), 50,50));画圆
//    CGPathAddRect(pathRef, nil, CGRectInset(_imageView.bounds, 10,10));//画方
//    shapeLayer.path = pathRef;
//    shapeLayer.shadowOpacity = 1;
//    shapeLayer.shadowRadius = 45;
//    _imageView.layer.mask = shapeLayer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
