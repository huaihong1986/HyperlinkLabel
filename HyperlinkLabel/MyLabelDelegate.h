//
//  MyLabelDelegate.h
//  HyperlinkLabel
//
//  Created by Hu Aihong on 15-8-19.
//  Copyright (c) 2015年 ChinaCloud. All rights reserved.
//



#import <Foundation/Foundation.h>
@class MyLabel;
@protocol MyLabelDelegate <NSObject>
@required
- (void)myLabel:(MyLabel *)myLabel touchesWtihTag:(NSInteger)tag;
@end


