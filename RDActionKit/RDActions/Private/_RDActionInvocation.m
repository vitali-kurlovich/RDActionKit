//
//  _RDActionInvocation.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "_RDActionInvocation.h"

@implementation _RDActionInvocation

- (instancetype)initWithInvocation:(NSInvocation*)invacation
{
    self = [super init];
    if (self)
    {
        _invacation = invacation;
    }
    return self;
}

- (void)execute
{
    [self.invacation invoke];
}

@end
