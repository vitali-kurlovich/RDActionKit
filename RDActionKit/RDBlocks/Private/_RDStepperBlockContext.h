//
//  _RDStepperBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <Foundation/Foundation.h>

@class UIStepper;

@interface _RDStepperBlockContext : NSObject

@property (nonatomic, copy) void (^onValueChanged)(UIStepper* control);
- (void)bindWithStepper:(UIStepper*)control;

@end
