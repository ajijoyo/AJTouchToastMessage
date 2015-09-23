//
//  AJTouchToastMessage.m
//  exampleAJTouchMessage
//
//  Created by Rachmad Junaidi on 9/23/15.
//  Copyright © 2015 ajiejoy. All rights reserved.
//

#import "AJTouchToastMessage.h"


@implementation UIView(AJTouchToastMessage)


-(void)AJTsetMessage:(NSString *)string{
    [self AJTsetMessage:string withDuration:2.3];
}

-(void)AJTsetMessage:(NSString *)string withDuration:(CGFloat)duration{
    
    AJLabelMessage *lab = [[AJLabelMessage alloc]initWithDuration:duration];
    lab.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, 0, 0);
    lab.userInteractionEnabled = YES;
    lab.text = string;
    [[UIApplication sharedApplication].keyWindow addSubview:lab];
    
}


@end
