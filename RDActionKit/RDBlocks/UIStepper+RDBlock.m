//
//  UIStepper+RDBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "UIStepper+RDBlock.h"

#import <objc/runtime.h>

#import "_RDStepperBlockContext.h"

@implementation UIStepper (RDBlock)

- (void)setOnValueChanged:(void (^)(UIStepper *control))onValueChanged
{
    [self _rdStepperBlockContext].onValueChanged = onValueChanged;
}

- (void (^)(UIStepper *))onValueChanged
{
    return [self _rdStepperBlockContext].onValueChanged;
}

- (_RDStepperBlockContext *)_rdStepperBlockContext
{
    _RDStepperBlockContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdStepperBlockContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDStepperBlockContext alloc] init];
        [controlBlock bindWithStepper:self];
        objc_setAssociatedObject(self, @selector(_rdStepperBlockContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}

@end
