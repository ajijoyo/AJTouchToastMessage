//
//  ViewController.m
//  exampleAJTouchMessage
//
//  Created by Rachmad Junaidi on 9/23/15.
//  Copyright © 2015 ajiejoy. All rights reserved.
//

#import "ViewController.h"
#import "AJTouchToastMessage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)buttontap:(id)sender{
    [sender AJTsetMessage:@"haihaihaihaihaihaihai haihaihaihai hai  haihaihaihai haihaihai haihaihaihai haihaihai haihaihai"];
}
-(void)buttpn2:(id)sender{
    [sender AJTsetMessage:@"WOW" withDuration:5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
