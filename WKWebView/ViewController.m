//
//  ViewController.m
//  WKWebView
//
//  Created by dangxy on 16/9/6.
//  Copyright © 2016年 xproinfo.com. All rights reserved.
//

#define MainColor     UIColorFromRGB(0x1FB5EC)  //主色

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import "ViewController.h"
#import "CCWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];

    UIButton *commitBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [commitBtn setFrame:CGRectMake(30, 44*3+20, self.view.frame.size.width-60, 50)];
    [commitBtn setBackgroundColor:MainColor];
    [commitBtn setTitle:@"跳转" forState:UIControlStateNormal];
    commitBtn.layer.cornerRadius = 5;
    commitBtn.clipsToBounds = YES;
    [self.view addSubview:commitBtn];
    [commitBtn addTarget:self action:@selector(commitChangePSWBtnClick) forControlEvents:UIControlEventTouchUpInside];

}

-(void)commitChangePSWBtnClick
{
    
    [CCWebViewController showWithContro:self withUrlStr:@"https://www.baidu.com" withTitle:@"百度"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
