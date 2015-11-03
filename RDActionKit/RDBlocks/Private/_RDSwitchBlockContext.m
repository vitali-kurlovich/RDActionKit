//
//  _RDSwitchBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import "_RDSwitchBlockContext.h"

@import UIKit;


@interface _RDSwitchBlockContext()
@property (nonatomic, weak) UISwitch* control;
@end

@implementation _RDSwitchBlockContext

- (void)bindWithSwitch:(UISwitch*)control {
    _control = control;
}

- (void)setOnValueChanged:(void (^)(UISwitch *))onValueChanged
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

- (void)_onControlEventValueChanged:(UISwitch*)sender
{
    if (self.onValueChanged)
    {
        self.onValueChanged(sender);
    }
}


@end
