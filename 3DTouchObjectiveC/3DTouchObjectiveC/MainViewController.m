//
//  MainViewController.m
//  3DTouchObjectiveC
//
//  Created by Bao Tran on 11/6/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

#import "MainViewController.h"
#import "PeekViewController.h"

// Adopt the UIViewControllerPreviewingDelegate protocol in order to user the delegate methods.
@interface MainViewController () <UIViewControllerPreviewingDelegate>

// longPress property needs to be added in case the user does not have 3DTouch capabilities
@property (nonatomic, strong) UILongPressGestureRecognizer *longPress;

@end

@implementation MainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [self is3DTouchAvailable];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

- (void)is3DTouchAvailable {
    
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        
        [self registerForPreviewingWithDelegate:(id)self sourceView:self.view];
        NSLog(@"3D is available!");

        self.longPress.enabled = NO;

    } else {

        NSLog(@"3D is not available! long press functionality is turned on");
        self.longPress.enabled = YES;
    }
    
}

# pragma mark - 3DTouch delegate

-(UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
    
    if ([self.presentedViewController isKindOfClass:[PeekViewController class]]) {
        return nil;
    }
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *peekController = [storyboard instantiateViewControllerWithIdentifier:@"PeekView"];
    
    return peekController;
    
}

-(void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *popController = [storyboard instantiateViewControllerWithIdentifier:@"PopView"];
    
    [self showViewController:popController sender:self];
}

-(void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    
    [self is3DTouchAvailable];
}

- (UILongPressGestureRecognizer *)longPress {
    
    if (!_longPress) {
        _longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressPeek)];
    }
    
    return _longPress;
}

#pragma mark - Long press alternative

- (void)longPressPeek {

    self.longPress.enabled = NO;
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    PeekViewController *peek = [storyboard instantiateViewControllerWithIdentifier:@"PeekView"];
    
    UIViewController *presenter = [self grabTopViewController];
    [presenter showViewController:peek sender:self];
    
}

- (UIViewController *)grabTopViewController {

    UIViewController *top = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (top.presentedViewController) {
        top = top.presentedViewController;
    }
    
    return top;
}

@end
