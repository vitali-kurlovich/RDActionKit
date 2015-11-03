//
//  UIPageControl+RDBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "UIPageControl+RDBlock.h"

#import <objc/runtime.h>

#import "_RDPageControlBlockContext.h"


@implementation UIPageControl (RDBlock)

- (void)setOnValueChanged:(void (^)(UIPageControl *control))onValueChanged
{
    [self _rdPageControlBlockContext].onValueChanged = onValueChanged;
}

- (void (^)(UIPageControl *))onValueChanged
{
    return [self _rdPageControlBlockContext].onValueChanged;
}


- (_RDPageControlBlockContext *)_rdPageControlBlockContext
{
    _RDPageControlBlockContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdPageControlBlockContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDPageControlBlockContext alloc] init];
        [controlBlock bindWithPageControl:self];
        objc_setAssociatedObject(self, @selector(_rdPageControlBlockContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}

@end
