//
//  UISegmentedControl+RDBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import "UISegmentedControl+RDBlock.h"

#import <objc/runtime.h>

#import "_RDSegmentedControlBlockContext.h"

@implementation UISegmentedControl (RDBlock)

- (void)setOnValueChanged:(void (^)(UISegmentedControl *control))onValueChanged
{
    [self _rdSegmentedControlBlockContext].onValueChanged = onValueChanged;
}

- (void (^)(UISegmentedControl*))onValueChanged
{
    return [self _rdSegmentedControlBlockContext].onValueChanged;
}

- (_RDSegmentedControlBlockContext *)_rdSegmentedControlBlockContext
{
    _RDSegmentedControlBlockContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdSegmentedControlBlockContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDSegmentedControlBlockContext alloc] init];
        [controlBlock bindWithSegmentedControl:self];
        objc_setAssociatedObject(self, @selector(_rdSegmentedControlBlockContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}

@end
