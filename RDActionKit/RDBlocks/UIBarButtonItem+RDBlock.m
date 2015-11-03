//
//  UIBarButtonItem+RDBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "UIBarButtonItem+RDBlock.h"

#import <objc/runtime.h>

#import "_RDBarButtonItemBlockContext.h"

@implementation UIBarButtonItem (RDBlock)

- (void)setOnActionBlock:(void (^)(UIBarButtonItem *))onActionBlock
{
    
    [self _rdBarButtonItemBlockContext].onActionBlock = onActionBlock;
}

- (void (^)(UIBarButtonItem *))onActionBlock
{
    return [self _rdBarButtonItemBlockContext].onActionBlock;
}

- (_RDBarButtonItemBlockContext *)_rdBarButtonItemBlockContext
{
    _RDBarButtonItemBlockContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdBarButtonItemBlockContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDBarButtonItemBlockContext alloc] init];
        [controlBlock bindWithBarButtonItem:self];
        objc_setAssociatedObject(self, @selector(_rdBarButtonItemBlockContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}


@end
