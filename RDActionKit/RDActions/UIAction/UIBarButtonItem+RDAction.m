//
//  UIBarButtonItem+RDAction.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "UIBarButtonItem+RDAction.h"

#import <objc/runtime.h>

#import "_RDBarButtonItemActionContext.h"

@implementation UIBarButtonItem (RDAction)

- (id<RDActionProtocol>)rDAction
{
    return [self _rdBarButtonItemActionContext].action;
}

- (void)setRDAction:(id<RDActionProtocol>)action
{
    [self _rdBarButtonItemActionContext].action = action;
}



- (_RDBarButtonItemActionContext *)_rdBarButtonItemActionContext
{
    _RDBarButtonItemActionContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdBarButtonItemActionContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDBarButtonItemActionContext alloc] init];
        [controlBlock bindWithBarButtonItem:self];
        objc_setAssociatedObject(self, @selector(_rdBarButtonItemActionContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}



@end
