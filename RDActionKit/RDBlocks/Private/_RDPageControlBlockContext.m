//
//  _RDPageControlBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "_RDPageControlBlockContext.h"

@import UIKit;


@interface _RDPageControlBlockContext()
@property (nonatomic, weak) UIPageControl* control;
@end

@implementation _RDPageControlBlockContext

- (void)bindWithPageControl:(UIPageControl*)control {
    _control = control;
}

- (void)setOnValueChanged:(void (^)(UIPageControl *))onValueChanged
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

- (void)_onControlEventValueChanged:(UIPageControl*)sender
{
    if (self.onValueChanged)
    {
        self.onValueChanged(sender);
    }
}


@end


