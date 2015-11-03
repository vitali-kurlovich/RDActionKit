//
//  UISwitch+RDBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import "UISwitch+RDBlock.h"

#import <objc/runtime.h>

#import "_RDSwitchBlockContext.h"

@implementation UISwitch (RDBlock)

- (void)setOnValueChanged:(void (^)(UISwitch *control))onValueChanged
{
    [self _rdSwitchBlockContext].onValueChanged = onValueChanged;
}

- (void (^)(UISwitch *))onValueChanged
{
    return [self _rdSwitchBlockContext].onValueChanged;
}


- (_RDSwitchBlockContext *)_rdSwitchBlockContext
{
    _RDSwitchBlockContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdSwitchBlockContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDSwitchBlockContext alloc] init];
        [controlBlock bindWithSwitch:self];
        objc_setAssociatedObject(self, @selector(_rdSwitchBlockContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}

@end
