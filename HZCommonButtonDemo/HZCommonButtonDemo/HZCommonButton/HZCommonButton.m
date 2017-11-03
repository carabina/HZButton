//
//  HZCommonButton.m
//  Anjuke
//
//  Created by Andyzzhz on 2017/10/16.
//  Copyright © 2017年 developer inc. All rights reserved.
//

#import "HZCommonButton.h"

@implementation HZCommonButton

/**
 * 重新布局button的内容
 */
-(void)layoutSubviews{
    [super layoutSubviews];
    switch (self.customstyle) {
        case HZCommonButtonCustomStylePicTop:
        {
            [self setTitleEdgeInsets:UIEdgeInsetsZero];

            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;

            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;

            imageFrame.origin.x = (self.frame.size.width-imageFrame.size.width)*0.5;
            imageFrame.origin.y = (self.frame.size.height-imageFrame.size.height-labelFrame.size.height-self.customSpace)*0.5;
            self.imageView.frame = imageFrame;

            labelFrame.origin.x = (self.frame.size.width-labelFrame.size.width)*0.5;;
            labelFrame.origin.y = imageFrame.origin.y+imageFrame.size.height+self.customSpace;
            self.titleLabel.frame = labelFrame;

            break;
        }
        case HZCommonButtonCustomStylePicLeft:
        {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;

            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;

            imageFrame.origin.x = (self.frame.size.width-imageFrame.size.width-labelFrame.size.width-self.customSpace)*0.5;
            imageFrame.origin.y = (self.frame.size.height-imageFrame.size.height)*0.5;
            self.imageView.frame = imageFrame;

            labelFrame.origin.x = imageFrame.origin.x+imageFrame.size.width+self.customSpace;
            labelFrame.origin.y = (self.frame.size.height-labelFrame.size.height)*0.5;
            self.titleLabel.frame = labelFrame;

            break;
        }
        case HZCommonButtonCustomStylePicDown:
        {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;

            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;

            labelFrame.origin.x = (self.frame.size.width-labelFrame.size.width)*0.5;
            labelFrame.origin.y = (self.frame.size.height-labelFrame.size.height-imageFrame.size.height-self.customSpace)*0.5;
            self.titleLabel.frame = labelFrame;

            imageFrame.origin.x = (self.frame.size.width-imageFrame.size.width)*0.5;
            imageFrame.origin.y = labelFrame.origin.y+labelFrame.size.height+self.customSpace;
            self.imageView.frame = imageFrame;

            break;
        }
        case HZCommonButtonCustomStylePicRight:
        {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;

            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;

            labelFrame.origin.x = (self.frame.size.width-imageFrame.size.width-labelFrame.size.width-self.customSpace)*0.5;
            labelFrame.origin.y = (self.frame.size.height-labelFrame.size.height)*0.5;
            self.titleLabel.frame = labelFrame;

            imageFrame.origin.x = labelFrame.origin.x+labelFrame.size.width+self.customSpace;
            imageFrame.origin.y = (self.frame.size.height-imageFrame.size.height)*0.5;
            self.imageView.frame = imageFrame;

            break;
        }
        default:
            break;
    }
}

@end
