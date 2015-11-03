//
//  _RDStepperBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "_RDStepperBlockContext.h"

@import UIKit;


@interface _RDStepperBlockContext()
@property (nonatomic, weak) UIStepper* control;
@end

@implementation _RDStepperBlockContext

- (void)bindWithStepper:(UIStepper*)control {
    _control = control;
}

- (void)setOnValueChanged:(void (^)(UIStepper *))onValueChanged
{
    if (_onValueChanged != onValueChanged)
    {
        _onValueChanged = [onValueChanged copy];
        if (onValueChanged)
        {
            [self registerControlEvent];
        }
        else
        {
            [self unRegisterControlEvent];
        }
    }
}

- (void)unRegisterControlEvent
{
    [self.control removeTarget:self
                        action:@selector(_onControlEventValueChanged:)
              forControlEvents:UIControlEventValueChanged];
}

- (void)registerControlEvent
{
    [self.control addTarget:self
                     action:@selector(_onControlEventValueChanged:)
           forControlEvents:UIControlEventValueChanged];
    
}

- (void)_onControlEventValueChanged:(UIStepper*)sender
{
    if (self.onValueChanged)
    {
        self.onValueChanged(sender);
    }
}


@end




