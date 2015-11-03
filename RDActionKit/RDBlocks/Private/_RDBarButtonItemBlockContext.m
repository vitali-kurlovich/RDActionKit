//
//  _RDBarButtonItemBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "_RDBarButtonItemBlockContext.h"

@import UIKit;

@interface _RDBarButtonItemBlockContext()
@property (nonatomic, weak) UIBarButtonItem* barButtonItem;
@end


@implementation _RDBarButtonItemBlockContext

- (void)bindWithBarButtonItem:(UIBarButtonItem*)barButtonItem
{
    _barButtonItem = barButtonItem;
}

- (void)setOnActionBlock:(void (^)(UIBarButtonItem *))onAction
{
    if (_onActionBlock != onAction)
    {
        _onActionBlock = [onAction copy];
        
        if (_onActionBlock)
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
    if (self.onActionBlock)
    {
        self.onActionBlock(self.barButtonItem);
    }
}

@end
