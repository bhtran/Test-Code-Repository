//
//  ViewController.m
//  BlockDemo
//
//  Created by Bao Tran on 4/27/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _blockAsAMemberVar = ^(void) {
        return @"This block is declared as a member variable!";
    };

    [self testBlockStorageType];

}

- (void)testBlockStorageType {
    __block int someValue = 10;
    
    int (^myOperation)(void) = ^(void) {
        someValue = someValue + 5;
        
        return someValue + 10;
    };
    
    NSLog(@"** ** \n\n\n%d", myOperation());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
