//
//  ViewController.m
//  HyperlinkLabel
//
//  Created by Hu Aihong on 15-8-19.
//  Copyright (c) 2015年 ChinaCloud. All rights reserved.
//

#import "ViewController.h"
#import "MyLabel.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize myButton,mainView,webView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.webView.scalesPageToFit =YES;
    self.webView.delegate =self;
    
    webSite = [[MyLabel alloc] initWithFrame:CGRectMake(50, 10, 210, 40)];
    [webSite setText:@"http://www.baidu.com"];
    [webSite  setDelegate:self];
    [self.mainView addSubview:webSite];
    
   
   

    

}

#pragma mark MyLabel Delegate Methods
// myLabel是你的MyLabel委托的实例, tag是该实例的tag值, 有点多余, 哈哈
- (void)myLabel:(MyLabel *)myLabel touchesWtihTag:(NSInteger)tag {
    
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:webSite.text]];
    
    [self loadWebPageWithString:webSite.text];
   
    webSite.hidden = YES;
    self.webView.hidden = NO;
    
}
- (void)loadWebPageWithString:(NSString*)urlString
{
    
    NSURL *url =[NSURL URLWithString:urlString];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
     ;
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    ;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    UIAlertView *alterview = [[UIAlertView alloc] initWithTitle:@"" message:[error localizedDescription]  delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alterview show];
    
}

- (IBAction)BackBtn:(id)sender{
    
    self.webView.hidden = YES;
    webSite.hidden = NO;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
