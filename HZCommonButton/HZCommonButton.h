//
//  HZCommonButton.h
//  Anjuke
//
//  Created by Andyzzhz on 2017/10/16.
//  Copyright © 2017年 developer inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 按钮的样式

 - HZCommonButtonCustomStyleNomal:    普通样式
 - HZCommonButtonCustomStylePicTop:   图片在上文字在下
 - HZCommonButtonCustomStylePicLeft:  图片在左文字在右
 - HZCommonButtonCustomStylePicDown:  图片在下文字在上
 - HZCommonButtonCustomStylePicRight: 图片在右文字在左
 */
typedef NS_ENUM(NSUInteger, HZCommonButtonCustomStyle) {
    HZCommonButtonCustomStyleNomal = 0,
    HZCommonButtonCustomStylePicTop,
    HZCommonButtonCustomStylePicLeft,
    HZCommonButtonCustomStylePicDown,
    HZCommonButtonCustomStylePicRight,
};

@interface HZCommonButton : UIButton

/**
 * 自定义样式(nomal为系统原本的样式)
 */
@property (assign, nonatomic) HZCommonButtonCustomStyle customstyle;

/**
 * 自定义间距(nomal下无效)
 */
@property (assign, nonatomic) CGFloat customSpace;

@end
