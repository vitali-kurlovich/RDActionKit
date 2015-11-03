//
//  _RDActionCollectionContext.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "_RDActionCollectionContext.h"

@interface _RDActionCollectionContext()
{
    NSMutableDictionary* _actions;
}

@end

@implementation _RDActionCollectionContext

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _actions = [NSMutableDictionary dictionary];
    }
    
    return self;
}

- (NSUInteger)count
{
    return _actions.count;
}

- (id<RDActionProtocol>)actionForKey:(id)key
{
    return _actions[key];
}

-(void)setAction:(id<RDActionProtocol>)action forKey:(id)key
{
    if (action)
    {
        [_actions setObject:action forKey:key];
    } else {
        [self removeActionForKey:key];
    }
}


- (void)removeActionForKey:(id)key
{
    [_actions removeObjectForKey:key];
}


- (void)removeAllActions
{
    [_actions removeAllObjects];
}


- (void)executeActionForKey:(nonnull id)key
{
    [_actions[key] execute];
}

@end
