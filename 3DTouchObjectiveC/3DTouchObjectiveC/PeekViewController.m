//
//  PeekViewController.m
//  3DTouchObjectiveC
//
//  Created by Bao Tran on 11/12/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

#import "PeekViewController.h"

@interface PeekViewController ()

@end

@implementation PeekViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

- (void)dismissPeek {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)is3DTouchAvailable {
    if (self.traitCollection.forceTouchCapability != UIForceTouchCapabilityAvailable) {
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissPeek)];
        
        [self.view addGestureRecognizer:tap];
        
    }
}

@end
