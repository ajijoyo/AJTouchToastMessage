//
//  AJLabelMessage.m
//  exampleAJTouchMessage
//
//  Created by Rachmad Junaidi on 9/23/15.
//  Copyright © 2015 ajiejoy. All rights reserved.
//

#import "AJLabelMessage.h"

@implementation AJLabelMessage


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawTextInRect:(CGRect)rect {
    UIEdgeInsets insets = {5, 5, 5, 5};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

-(id)initWithDuration:(CGFloat)duration{
    if (self==[super initWithFrame:CGRectMake(0, 0, 100, 100)]) {
        self.numberOfLines = 0 ;
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 4;
        self.layer.shadowColor = [UIColor whiteColor].CGColor;
        self.layer.shadowOffset = CGSizeMake(0, 1);
        self.layer.shadowOpacity = 1;
        self.textAlignment = NSTextAlignmentCenter;
        self.textColor = [UIColor whiteColor];
        self.adjustsFontSizeToFitWidth = YES;
        self.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:.0 alpha:0.4];
        self.text = @"dummy text";
        [NSTimer scheduledTimerWithTimeInterval:duration target:self selector:@selector(dismis) userInfo:nil repeats:NO];
    }
    return self;
}

-(void)dismis{
    [self removeFromSuperview];
}

-(void)layoutSubviews{
    CGRect rect = [self.text boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 30, CGFLOAT_MAX) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin  attributes:@{NSFontAttributeName:self.font} context:nil];
    CGRect rectScreen = [UIScreen mainScreen].bounds;
    CGFloat height = rect.size.height + 10 ;
    CGFloat width  = rect.size.width + 10 ;
    
    CGFloat setY = self.frame.origin.y - height -10 ;
    if (setY < 20) {
        setY = self.frame.origin.y + 30;
    }
    
    CGFloat setX = ((rectScreen.size.width - width) / 2)  ;
    if (setX > 15) {
        setX =  ((rectScreen.size.width - width) / 2) - width ;
        if(setX < 10){
            setX =  ((rectScreen.size.width - width) / 2) + width ;
        }
    }
    
    self.frame = CGRectMake(setX, setY,width,height);
}
@end
