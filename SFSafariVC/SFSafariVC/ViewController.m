//
//  ViewController.m
//  SFSafariVC
//
//  Created by Jason on 16/4/26.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"
#import <SafariServices/SafariServices.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _button.layer.cornerRadius = _button.frame.size.height/2;
    _button.layer.masksToBounds = YES;
}
- (IBAction)action:(UIButton *)sender {
    NSURL * url = [NSURL URLWithString:@"https://www.baidu.com"];
    SFSafariViewController * SFSafariVC = [[SFSafariViewController alloc]initWithURL:url entersReaderIfAvailable:YES];
    [self presentViewController:SFSafariVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
