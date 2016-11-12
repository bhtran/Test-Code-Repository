//
//  PopViewController.m
//  3DTouchObjectiveC
//
//  Created by Bao Tran on 11/12/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

#import "PopViewController.h"

@interface PopViewController ()

@property (nonatomic, strong) UITapGestureRecognizer *tap;

@end

@implementation PopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addGestureRecognizer:self.tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)dismissPop {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UITapGestureRecognizer *)tap {
    if (!_tap) {
        _tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissPop)];
    }
    
    return _tap;
}


@end
