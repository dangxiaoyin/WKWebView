//
//  CCWebViewController.h
//  WebViewDemo
//
//  Created by dangxy on 16/9/6.
//  Copyright © 2016年 xproinfo.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCWebViewController : UIViewController

@property (strong, nonatomic) NSURL *homeUrl;

/** 传入控制器、url、标题 */
+ (void)showWithContro:(UIViewController *)contro withUrlStr:(NSString *)urlStr withTitle:(NSString *)title;

@end

