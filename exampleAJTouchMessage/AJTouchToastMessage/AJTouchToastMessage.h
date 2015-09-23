//
//  AJTouchToastMessage.h
//  exampleAJTouchMessage
//
//  Created by Rachmad Junaidi on 9/23/15.
//  Copyright © 2015 ajiejoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AJLabelMessage.h"

@interface UIView(AJTouchToastMessage)


-(void)AJTsetMessage:(NSString*)string;
-(void)AJTsetMessage:(NSString*)string withDuration:(CGFloat)duration;
@end
