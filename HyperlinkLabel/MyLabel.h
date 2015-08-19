//
//  MyLabel.h
//  HyperlinkLabel
//
//  Created by Hu Aihong on 15-8-19.
//  Copyright (c) 2015年 ChinaCloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyLabelDelegate.h"

@interface MyLabel : UILabel {
   
}
@property (nonatomic, assign) id <MyLabelDelegate> delegate;
- (id)initWithFrame:(CGRect)frame;
@end


