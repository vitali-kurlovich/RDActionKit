//
//  RDAction.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "RDAction.h"

#import "_RDActionBlock.h"
#import "_RDActionInvocation.h"

@implementation RDAction

+ (instancetype)action
{
    return [[self alloc] init];
}


+ (instancetype)actionWithBlock:(void (^)())actionBlock
{
    return [[_RDActionBlock alloc] initWithBlock:actionBlock];
}

+ (instancetype)actionWithInvocation:(NSInvocation*)invacation
{
    return [[_RDActionInvocation alloc] initWithInvocation:invacation];
}

- (void)execute
{
    
}

@end



