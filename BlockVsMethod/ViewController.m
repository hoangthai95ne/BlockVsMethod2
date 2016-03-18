//
//  ViewController.m
//  BlockVsMethod
//
//  Created by Hoàng Thái on 3/18/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label2.hidden = YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        [NSThread sleepForTimeInterval:3.0];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.label2.hidden = NO;
        });
    });
    
}

@end
