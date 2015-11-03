//
//  _RDActionBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "_RDActionBlock.h"

@implementation _RDActionBlock
- (instancetype)initWithBlock:(void (^)())action
{
    self = [super init];
    if (self)
    {
        _actionBlock = [action copy];
    }
    return self;
}

- (void)execute
{
    if (self.actionBlock)
    {
        self.actionBlock();
    }
}
@end
