//
//  ViewController.h
//  HyperlinkLabel
//
//  Created by Hu Aihong on 15-8-19.
//  Copyright (c) 2015年 ChinaCloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyLabelDelegate.h"
#import "MyLabel.h"
@interface ViewController : UIViewController<MyLabelDelegate,UIWebViewDelegate>
{
    MyLabel *webSite;
}

@property (nonatomic) IBOutlet  UIButton *myButton;
@property (nonatomic) IBOutlet  UIWebView *webView;
@property (nonatomic) IBOutlet  UIView  *mainView;

- (void)loadWebPageWithString:(NSString*)urlString;
- (IBAction)BackBtn:(id)sender;
@end

