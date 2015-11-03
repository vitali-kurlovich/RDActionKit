//
//  _RDSliderBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "_RDSliderBlockContext.h"

@import UIKit;

@interface _RDSliderBlockContext()
@property (nonatomic, weak) UISlider* control;
@end

@implementation _RDSliderBlockContext

- (void)bindWithSlider:(UISlider*)slider {
    _control = slider;
}

- (void)setOnValueChanged:(void (^)(UISlider *))onValueChanged
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

- (void)_onControlEventValueChanged:(UISlider*)sender
{
    if (self.onValueChanged)
    {
        self.onValueChanged(sender);
    }
}


@end
