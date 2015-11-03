//
//  _RDSegmentedControlBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import "_RDSegmentedControlBlockContext.h"

@import UIKit;


@interface _RDSegmentedControlBlockContext()
@property (nonatomic, weak) UISegmentedControl* control;
@end

@implementation _RDSegmentedControlBlockContext

- (void)bindWithSegmentedControl:(UISegmentedControl*)control {
    _control = control;
    
}

- (void)setOnValueChanged:(void (^)(UISegmentedControl *))onValueChanged
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

- (void)_onControlEventValueChanged:(UISegmentedControl*)sender
{
    if (self.onValueChanged)
    {
        self.onValueChanged(sender);
    }
}



@end
