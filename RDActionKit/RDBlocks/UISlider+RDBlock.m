//
//  UISlider+RDBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "UISlider+RDBlock.h"

#import <objc/runtime.h>

#import "_RDSliderBlockContext.h"

@implementation UISlider (RDBlock)


- (void)setOnValueChanged:(void (^)(UISlider *control))onValueChanged
{
    [self _rdSliderBlockContext].onValueChanged = onValueChanged;
}

- (void (^)(UISlider *))onValueChanged
{
    return [self _rdSliderBlockContext].onValueChanged;
}


- (_RDSliderBlockContext *)_rdSliderBlockContext
{
    _RDSliderBlockContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdSliderBlockContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDSliderBlockContext alloc] init];
        [controlBlock bindWithSlider:self];
        objc_setAssociatedObject(self, @selector(_rdSliderBlockContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}

@end
