//
//  RDActionQueue.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "RDActionQueue.h"

@interface RDActionQueue ()
@property (nonatomic) NSMutableArray<id<RDActionProtocol>>* mutableActions;
@end

@implementation RDActionQueue

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _mutableActions = [NSMutableArray array];
    }
    return self;
}

- (NSArray*)actions
{
    return [self.mutableActions copy];
}

#pragma mark - MMActionProtocol
- (void)execute
{
    while (self.mutableActions.count > 0)
    {
        id<RDActionProtocol> action = [self.mutableActions firstObject];
        [self.mutableActions removeObject:action];
        [action execute];
    }
}

- (void)removeAllActions
{
    [self.mutableActions removeAllObjects];
}

- (void)addAction:(id<RDActionProtocol>)action
{
    [self.mutableActions addObject:action];
}

- (void)removeAction:(id<RDActionProtocol>)action
{
    [self.mutableActions removeObject:action];
}

@end