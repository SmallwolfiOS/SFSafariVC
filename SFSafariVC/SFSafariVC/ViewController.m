//
//  ViewController.m
//  SFSafariVC
//
//  Created by Jason on 16/4/26.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"
#import <SafariServices/SafariServices.h>
#import "HPActivity.h"


@interface ViewController ()<SFSafariViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UISwitch *gSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _button.layer.cornerRadius = _button.frame.size.height/2;
    _button.layer.masksToBounds = YES;
}
- (IBAction)action:(UIButton *)sender {
    if (_gSwitch.on) {
        [self openActivityViewController];
    }else{
        [self openSFSafariViewController];
    }
}
- (void)openActivityViewController{
    NSString *textToShare = @"微博跑";
    UIImage * imageToShare = [UIImage imageNamed:@"Icon72x72.png"];
    NSURL *urlToShare = [NSURL URLWithString:@"httts://www.baidu.com"];
    NSArray *activityItems = @[textToShare, urlToShare];
    
    HPActivity * weiboAC = [[HPActivity alloc]initWithImage:imageToShare atURL:@"httts://www.baidu.com" atTitle:textToShare atShareContentArray:activityItems];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:activityItems applicationActivities:@[weiboAC]];
    //不需要显示的，在这里屏蔽掉
    activityVC.excludedActivityTypes = @[UIActivityTypePostToFacebook,UIActivityTypePostToWeibo,UIActivityTypePostToTwitter,UIActivityTypePrint];
    
    [self presentViewController:activityVC animated:YES completion:nil];
}
- (void)openSFSafariViewController{
    NSURL * url = [NSURL URLWithString:@"https://www.baidu.com"];
    SFSafariViewController * SFSafariVC = [[SFSafariViewController alloc]initWithURL:url entersReaderIfAvailable:YES];
    SFSafariVC.view.tintColor = [UIColor redColor];
    SFSafariVC.delegate = self;
    [self presentViewController:SFSafariVC animated:YES completion:nil];
}
#pragma mark - SFSafariViewControllerDelegate
- (NSArray<UIActivity *> *)safariViewController:(SFSafariViewController *)controller activityItemsForURL:(NSURL *)URL title:(nullable NSString *)title{
    NSString *textToShare = @"微博跑";
    UIImage * imageToShare = [UIImage imageNamed:@"Group2.png"];
    NSURL *urlToShare = [NSURL URLWithString:@"httts://www.baidu.com"];
    NSArray *activityItems = @[textToShare, urlToShare];
    
    HPActivity * weiboAC = [[HPActivity alloc]initWithImage:imageToShare atURL:@"httts://www.baidu.com" atTitle:textToShare atShareContentArray:activityItems];
    
    
    return @[weiboAC];
}
- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller{
    NSLog(@"点击了Done");
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully{
    NSLog(@"网页加载完成");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
