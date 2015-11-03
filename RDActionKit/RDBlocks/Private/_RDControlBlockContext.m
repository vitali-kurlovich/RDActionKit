//
//  _RDControlBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import "_RDControlBlockContext.h"

@import UIKit;

@interface _RDControlBlockContext()
@property (nonatomic, weak) UIControl* control;
@end

@implementation _RDControlBlockContext

- (void)bindWithControl:(UIControl*)control {
    _control = control;
}


// Touch Down
- (void)setOnTouchDown:(void (^)(UIControl *))onTouchDown
{
    if (_onTouchDown != onTouchDown) {
        _onTouchDown = [onTouchDown copy];
        
        if (onTouchDown) {
            [self registerControlEvent:UIControlEventTouchDown];
        } else {
            [self unRegisterControlEvent:UIControlEventTouchDown];
        }
    }
}


- (void)setOnTouchDownRepeat:(void (^)(UIControl *))onTouchDownRepeat
{
    if (_onTouchDownRepeat != onTouchDownRepeat) {
        _onTouchDownRepeat = [onTouchDownRepeat copy];
        
        if (onTouchDownRepeat) {
            [self registerControlEvent:UIControlEventTouchDownRepeat];
        } else {
            [self unRegisterControlEvent:UIControlEventTouchDownRepeat];
        }
    }
}

// Drag and Drop

- (void)setOnTouchDragInside:(void (^)(UIControl *))onTouchDragInside
{
    if (_onTouchDragInside != onTouchDragInside) {
        _onTouchDragInside = [onTouchDragInside copy];
        
        if (onTouchDragInside) {
            [self registerControlEvent:UIControlEventTouchDragInside];
        } else {
            [self unRegisterControlEvent:UIControlEventTouchDragInside];
        }
    }
}

- (void)setOnTouchDragOutside:(void (^)(UIControl *))onTouchDragOutside
{
    if (_onTouchDragOutside != onTouchDragOutside) {
        _onTouchDragOutside = [onTouchDragOutside copy];
        
        if (onTouchDragOutside) {
            [self registerControlEvent:UIControlEventTouchDragOutside];
        } else {
            [self unRegisterControlEvent:UIControlEventTouchDragOutside];
        }
    }
}


- (void)setOnTouchDragEnter:(void (^)(UIControl *))onTouchDragEnter
{
    if (_onTouchDragEnter != onTouchDragEnter) {
        _onTouchDragEnter = [onTouchDragEnter copy];
        
        if (onTouchDragEnter)
        {
            [self registerControlEvent:UIControlEventTouchDragEnter];
        } else {
            [self unRegisterControlEvent:UIControlEventTouchDragEnter];
        }
    }
}


- (void)setOnTouchDragExit:(void (^)(UIControl *))onTouchDragExit
{
    if (_onTouchDragExit != onTouchDragExit) {
        _onTouchDragExit = [onTouchDragExit copy];
        
        if (onTouchDragExit)
        {
            [self registerControlEvent:UIControlEventTouchDragExit];
        } else {
            [self unRegisterControlEvent:UIControlEventTouchDragExit];
        }
    }
}


// Touch Up

- (void)setOnTouchUpInside:(void (^)(UIControl *))onTouchUpInside {
    if (_onTouchUpInside != onTouchUpInside) {
        _onTouchUpInside = [onTouchUpInside copy];
        
        if (onTouchUpInside)
        {
            [self registerControlEvent:UIControlEventTouchUpInside];
        } else {
            [self unRegisterControlEvent:UIControlEventTouchUpInside];
        }
    }
}


- (void)setOnTouchUpOutside:(void (^)(UIControl *))onTouchUpOutside
{
    if (_onTouchUpOutside != onTouchUpOutside) {
        _onTouchUpOutside = [onTouchUpOutside copy];
        
        if (onTouchUpOutside)
        {
            [self registerControlEvent:UIControlEventTouchUpOutside];
        } else {
            [self unRegisterControlEvent:UIControlEventTouchUpOutside];
        }
    }
}


- (void)registerControlEvent:(UIControlEvents)controlEvents {
    switch (controlEvents) {
        case UIControlEventTouchDown:
            [self.control addTarget:self
                             action:@selector(_onControlEventTouchDown:)
                   forControlEvents:UIControlEventTouchDown];
            break;
            
        case UIControlEventTouchDownRepeat:
            [self.control addTarget:self
                             action:@selector(_onControlEventTouchDownRepeat:)
                   forControlEvents:UIControlEventTouchDownRepeat];
            break;
            
        case UIControlEventTouchUpInside:
            [self.control addTarget:self
                             action:@selector(_onControlEventTouchUpInside:)
                   forControlEvents:UIControlEventTouchUpInside];
            break;
            
            
        case UIControlEventTouchUpOutside:
            [self.control addTarget:self
                             action:@selector(_onControlEventTouchUpOutside:)
                   forControlEvents:UIControlEventTouchUpOutside];
            break;
            
            
        case UIControlEventTouchDragInside:
            [self.control addTarget:self
                             action:@selector(_onControlEventTouchDragInside:)
                   forControlEvents:UIControlEventTouchDragInside];
            break;
            
        case UIControlEventTouchDragOutside:
            [self.control addTarget:self
                             action:@selector(_onControlEventTouchDragOutside:)
                   forControlEvents:UIControlEventTouchDragOutside];
            break;
            
        case UIControlEventTouchDragEnter:
            [self.control addTarget:self
                             action:@selector(_onControlEventTouchDragEnter:)
                   forControlEvents:UIControlEventTouchDragEnter];
            break;
            
        case UIControlEventTouchDragExit:
            [self.control addTarget:self
                             action:@selector(_onControlEventTouchDragExit:)
                   forControlEvents:UIControlEventTouchDragExit];
            break;
            
        default:
            break;
    }
}


- (void)unRegisterControlEvent:(UIControlEvents)controlEvents {
    switch (controlEvents) {
        case UIControlEventTouchDown:
            [self.control removeTarget:self
                                action:@selector(_onControlEventTouchDown:)
                      forControlEvents:UIControlEventTouchDown];
            break;
            
        case UIControlEventTouchDownRepeat:
            [self.control removeTarget:self
                                action:@selector(_onControlEventTouchDownRepeat:)
                      forControlEvents:UIControlEventTouchDownRepeat];
            break;
            
        case UIControlEventTouchUpInside:
            [self.control removeTarget:self
                                action:@selector(_onControlEventTouchUpInside:)
                      forControlEvents:UIControlEventTouchUpInside];
            break;
            
        case UIControlEventTouchUpOutside:
            [self.control removeTarget:self
                                action:@selector(_onControlEventTouchUpOutside:)
                      forControlEvents:UIControlEventTouchUpOutside];
            break;
            
            
        case UIControlEventTouchDragInside:
            [self.control removeTarget:self
                                action:@selector(_onControlEventTouchDragInside:)
                      forControlEvents:UIControlEventTouchDragInside];
            break;
            
        case UIControlEventTouchDragOutside:
            [self.control removeTarget:self
                                action:@selector(_onControlEventTouchDragOutside:)
                      forControlEvents:UIControlEventTouchDragOutside];
            break;
            
        case UIControlEventTouchDragEnter:
            [self.control removeTarget:self
                                action:@selector(_onControlEventTouchDragEnter:)
                      forControlEvents:UIControlEventTouchDragEnter];
            break;
            
        case UIControlEventTouchDragExit:
            [self.control removeTarget:self
                                action:@selector(_onControlEventTouchDragExit:)
                      forControlEvents:UIControlEventTouchDragExit];
            break;
            
        default:
            break;
    }
}


- (void)_onControlEventTouchDown:(UIControl*)sender {
    if (self.onTouchDown) {
        self.onTouchDown(sender);
    }
}

- (void)_onControlEventTouchDownRepeat:(UIControl*)sender {
    if (self.onTouchDownRepeat) {
        self.onTouchDownRepeat(sender);
    }
}

// Drag and Drop
- (void)_onControlEventTouchDragInside:(UIControl*)sender {
    if (self.onTouchDragInside) {
        self.onTouchDragInside(sender);
    }
}

- (void)_onControlEventTouchDragOutside:(UIControl*)sender {
    if (self.onTouchDragOutside) {
        self.onTouchDragOutside(sender);
    }
}


- (void)_onControlEventTouchDragEnter:(UIControl*)sender {
    if (self.onTouchDragEnter) {
        self.onTouchDragEnter(sender);
    }
}

- (void)_onControlEventTouchDragExit:(UIControl*)sender {
    if (self.onTouchDragExit) {
        self.onTouchDragExit(sender);
    }
}

// Touch Up
- (void)_onControlEventTouchUpInside:(UIControl*)sender {
    if (self.onTouchUpInside) {
        self.onTouchUpInside(sender);
    }
}

- (void)_onControlEventTouchUpOutside:(UIControl*)sender {
    if (self.onTouchUpOutside) {
        self.onTouchUpOutside(sender);
    }
}




@end
