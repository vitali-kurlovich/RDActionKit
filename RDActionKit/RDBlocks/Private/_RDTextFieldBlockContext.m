//
//  _RDTextFieldBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import "_RDTextFieldBlockContext.h"

@import UIKit;

@interface _RDTextFieldBlockContext()
@property (nonatomic, weak) UITextField* control;
@end

@implementation _RDTextFieldBlockContext

- (void)bindWithTextField:(UITextField*)control
{
    _control = control;
}


- (void)setOnEditingDidBegin:(void (^)(UITextField *))onEditingDidBegin
{
    if (_onEditingDidBegin != onEditingDidBegin)
    {
        _onEditingDidBegin = [onEditingDidBegin copy];
        if (onEditingDidBegin)
        {
            [self registerControlEvent:UIControlEventEditingDidBegin];
        }
        else
        {
            [self unRegisterControlEvent:UIControlEventEditingDidBegin];
        }
    }
}

- (void)setOnEditingChanged:(void (^)(UITextField *))onEditingChanged
{
    if (_onEditingChanged != onEditingChanged)
    {
        _onEditingChanged = [onEditingChanged copy];
        if (onEditingChanged)
        {
            [self registerControlEvent:UIControlEventEditingChanged];
        }
        else
        {
            [self unRegisterControlEvent:UIControlEventEditingChanged];
        }
    }
}

- (void)setOnEditingDidEnd:(void (^)(UITextField *))onEditingDidEnd
{
    if (_onEditingDidEnd != onEditingDidEnd)
    {
        _onEditingDidEnd = [onEditingDidEnd copy];
        if (onEditingDidEnd)
        {
            [self registerControlEvent:UIControlEventEditingDidEnd];
        }
        else
        {
            [self unRegisterControlEvent:UIControlEventEditingDidEnd];
        }
    }
}

- (void)setOnEditingDidEndOnExit:(void (^)(UITextField *))onEditingDidEndOnExit
{
    if (_onEditingDidEndOnExit != onEditingDidEndOnExit)
    {
        _onEditingDidEndOnExit = [onEditingDidEndOnExit copy];
        if (onEditingDidEndOnExit)
        {
            [self registerControlEvent:UIControlEventEditingDidEndOnExit];
        }
        else
        {
            [self unRegisterControlEvent:UIControlEventEditingDidEndOnExit];
        }
    }
}


- (void)registerControlEvent:(UIControlEvents)controlEvents
{
    switch (controlEvents) {
            
        case UIControlEventEditingDidBegin:
            [self.control addTarget:self
                             action:@selector(_onControlEventEditingDidBegin:)
                   forControlEvents:UIControlEventEditingDidBegin];
            break;
            
        case UIControlEventEditingChanged:
            [self.control addTarget:self
                             action:@selector(_onControlEventEditingChanged:)
                   forControlEvents:UIControlEventEditingChanged];
            break;
            
        case UIControlEventEditingDidEnd:
            [self.control addTarget:self
                             action:@selector(_onControlEventEditingDidEnd:)
                   forControlEvents:UIControlEventEditingDidEnd];
            break;
            
        case UIControlEventEditingDidEndOnExit:
            [self.control addTarget:self
                             action:@selector(_onControlEventEditingDidEndOnExit:)
                   forControlEvents:UIControlEventEditingDidEndOnExit];
            break;
            
        default:
            break;
    }
    
}

- (void)unRegisterControlEvent:(UIControlEvents)controlEvents
{
    switch (controlEvents) {
            
        case UIControlEventEditingDidBegin:
            [self.control removeTarget:self
                                action:@selector(_onControlEventEditingDidBegin:)
                      forControlEvents:UIControlEventEditingDidBegin];
            break;
            
        case UIControlEventEditingChanged:
            [self.control removeTarget:self
                                action:@selector(_onControlEventEditingChanged:)
                      forControlEvents:UIControlEventEditingChanged];
            break;
            
        case UIControlEventEditingDidEnd:
            [self.control removeTarget:self
                                action:@selector(_onControlEventEditingDidEnd:)
                      forControlEvents:UIControlEventEditingDidEnd];
            break;
            
        case UIControlEventEditingDidEndOnExit:
            [self.control removeTarget:self
                                action:@selector(_onControlEventEditingDidEndOnExit:)
                      forControlEvents:UIControlEventEditingDidEndOnExit];
            break;
            
        default:
            break;
    }
}


- (void)_onControlEventEditingDidBegin:(UITextField*)sender
{
    if (self.onEditingDidBegin)
    {
        self.onEditingDidBegin(sender);
    }
}

- (void)_onControlEventEditingChanged:(UITextField*)sender
{
    if (self.onEditingChanged)
    {
        self.onEditingChanged(sender);
    }
}


- (void)_onControlEventEditingDidEnd:(UITextField*)sender
{
    if (self.onEditingDidEnd)
    {
        self.onEditingDidEnd(sender);
    }
}

- (void)_onControlEventEditingDidEndOnExit:(UITextField*)sender
{
    if (self.onEditingDidEndOnExit)
    {
        self.onEditingDidEndOnExit(sender);
    }
}



@end
