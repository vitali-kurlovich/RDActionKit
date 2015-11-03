//
//  _RDBarButtonItemActionContext.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "_RDBarButtonItemActionContext.h"

@import UIKit;

@interface _RDBarButtonItemActionContext()
@property (nonatomic, weak) UIBarButtonItem* barButtonItem;
@end

@implementation _RDBarButtonItemActionContext

- (void)bindWithBarButtonItem:(UIBarButtonItem*)barButtonItem
{
    _barButtonItem = barButtonItem;
}

- (void)setAction:(id<RDActionProtocol>)action
{
    if (_action != action)
    {
        _action = action;
        
        if (action)
        {
            self.barButtonItem.target = self;
            self.barButtonItem.action = @selector(_onAction:);
        }
        else
        {
            self.barButtonItem.target = nil;
            self.barButtonItem.action = nil;
        }
    }
}


- (void)_onAction:(id)sender
{
    [self.action execute];
}

@end
