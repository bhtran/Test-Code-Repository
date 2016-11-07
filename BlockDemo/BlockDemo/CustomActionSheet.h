//
//  CustomActionSheet.h
//  BlockDemo
//
//  Created by Bao Tran on 4/28/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomActionSheet : NSObject <UIAct>

-(id)initWithTitle:(NSString *)title delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles;

-(void)showInView:(UIView *)view withCompletionHandler:(void(^)(NSString *buttonTitle, NSInteger buttonIndex))handler;

@end
