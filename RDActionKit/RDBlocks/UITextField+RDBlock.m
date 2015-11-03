//
//  UITextField+RDBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import "UITextField+RDBlock.h"

#import <objc/runtime.h>

#import "_RDTextFieldBlockContext.h"

@implementation UITextField (RDBlock)


- (void)setOnEditingDidBegin:(void (^)(UITextField *))onEditingDidBegin
{
    [self _rdTextFieldBlockContext].onEditingDidBegin = onEditingDidBegin;
}

- (void (^)(UITextField*))onEditingDidBegin
{
    return [self _rdTextFieldBlockContext].onEditingDidBegin;
}

- (void)setOnEditingChanged:(void (^)(UITextField *))onEditingChanged
{
    [self _rdTextFieldBlockContext].onEditingChanged = onEditingChanged;
}

- (void (^)(UITextField*))onEditingChanged
{
    return [self _rdTextFieldBlockContext].onEditingChanged;
}


- (void)setOnEditingDidEnd:(void (^)(UITextField *))onEditingDidEnd
{
    [self _rdTextFieldBlockContext].onEditingDidEnd = onEditingDidEnd;
}

- (void (^)(UITextField*))onEditingDidEnd
{
    return [self _rdTextFieldBlockContext].onEditingDidEnd;
}


- (void)setOnEditingDidEndOnExit:(void (^)(UITextField *))onEditingDidEndOnExit
{
    [self _rdTextFieldBlockContext].onEditingDidEndOnExit = onEditingDidEndOnExit;
}

- (void (^)(UITextField*))onEditingDidEndOnExit
{
    return [self _rdTextFieldBlockContext].onEditingDidEndOnExit;
}



- (_RDTextFieldBlockContext *)_rdTextFieldBlockContext
{
    _RDTextFieldBlockContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdTextFieldBlockContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDTextFieldBlockContext alloc] init];
        [controlBlock bindWithTextField:self];
        objc_setAssociatedObject(self, @selector(_rdTextFieldBlockContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}

@end
