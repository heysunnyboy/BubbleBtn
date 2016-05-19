//
//  CGBubbleBtn.m
//  clickGame
//
//  Created by yebaojia on 16/5/16.
//  Copyright © 2016年 money. All rights reserved.
//

#import "CGBubbleBtn.h"

@implementation CGBubbleBtn

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame withImage:(UIImage *)image
{
    self = [super initWithFrame:frame];
    if (image == nil) {
        [self setImage:[UIImage imageNamed:@"start"] forState:UIControlStateNormal];
    }
    else
        [self setImage:image forState:UIControlStateNormal];
    [self setUI];
    return self;
}
-(void)setUI
{
    CAKeyframeAnimation *scaleX = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.x"];
    scaleX.values = @[[NSNumber numberWithFloat:1.0],[NSNumber numberWithFloat:1.1],[NSNumber numberWithFloat:1.0]];
    scaleX.keyTimes = @[[NSNumber numberWithFloat:0.0],[NSNumber numberWithFloat:0.5],[NSNumber numberWithFloat:1.0]];
    scaleX.repeatCount = MAXFLOAT;
    scaleX.autoreverses = YES;
    scaleX.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    scaleX.duration = 6;
    [self.layer addAnimation:scaleX forKey:@"scaleXAnimation"];
    CAKeyframeAnimation *scaleY = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.y"];
    scaleY.values = @[[NSNumber numberWithFloat:1.0],[NSNumber numberWithFloat:1.1],[NSNumber numberWithFloat:1.0]];
    scaleY.keyTimes = @[[NSNumber numberWithFloat:0.0],[NSNumber numberWithFloat:0.5],[NSNumber numberWithFloat:1.0]];
    scaleY.repeatCount = MAXFLOAT;
    scaleY.autoreverses = YES;
    scaleY.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    scaleY.duration = 6;
    [self.layer addAnimation:scaleX forKey:@"scaleYAnimation"];

}
@end
