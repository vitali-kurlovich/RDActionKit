//
//  UIButton+RDAction.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "UIButton+RDAction.h"

#import <objc/runtime.h>

#import "_RDControlActionContext.h"
#import "UIControl+_RDAction.h"

@implementation UIButton (RDAction)

- (id<RDActionProtocol>)rDAction
{
    return [self _rdControlActionContext].action;
}

- (void)setRDAction:(id<RDActionProtocol>)action
{
    [self _rdControlActionContext].action = action;
    
    if (action)
    {
        [[self _rdControlActionContext] registerEvent:UIControlEventTouchUpInside];
    } else {
        [[self _rdControlActionContext] unRegisterEvent:UIControlEventTouchUpInside];
    }
}


@end
