//
//  _RDControlActionContext.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "_RDControlActionContext.h"


@import UIKit;

@interface _RDControlActionContext()
@property (nonatomic, weak) UIControl* control;
@end

@implementation _RDControlActionContext


- (void)bindWithControl:(UIControl*)control {
    _control = control;
}


- (void)execute
{
    [self.action execute];
}



- (void)registerEvent:(UIControlEvents)event
{
    [self.control addTarget:self action:@selector(_onEvent:) forControlEvents:event];
}

- (void)unRegisterEvent:(UIControlEvents)event
{
     [self.control removeTarget:self action:@selector(_onEvent:) forControlEvents:event];
}

- (void)_onEvent:(id)sender
{
    [self.action execute];
}

@end
