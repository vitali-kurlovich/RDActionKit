//
//  UIControl+RDBlock.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import "UIControl+RDBlock.h"

#import <objc/runtime.h>

#import "_RDControlBlockContext.h"

@implementation UIControl (RDBlock)

- (void)setOnTouchDown:(void (^)(UIControl *))onTouchDown
{
    [self _rdControlBlockContext].onTouchDown = onTouchDown;
}

- (void (^)(UIControl *))onTouchDown
{
    return [self _rdControlBlockContext].onTouchDown;
}

- (void)setOnTouchDownRepeat:(void (^)(UIControl *control))onTouchDownRepeat
{
    [self _rdControlBlockContext].onTouchDownRepeat = onTouchDownRepeat;
}

- (void (^)(UIControl *))onTouchDownRepeat
{
    return [self _rdControlBlockContext].onTouchDownRepeat;
}

// Drag & Drop
- (void)setOnTouchDragInside:(void (^)(UIControl *control))onTouchDragInside
{
    [self _rdControlBlockContext].onTouchDragInside = onTouchDragInside;

}

- (void (^)(UIControl *))onTouchDragInside
{
    return [self _rdControlBlockContext].onTouchDragInside;
}


- (void)setOnTouchDragOutside:(void (^)(UIControl *control))onTouchDragOutside
{
    [self _rdControlBlockContext].onTouchDragOutside = onTouchDragOutside;
}

- (void (^)(UIControl *))onTouchDragOutside
{
    return [self _rdControlBlockContext].onTouchDragOutside;
}

- (void)setOnTouchDragEnter:(void (^)(UIControl *control))onTouchDragEnter
{
    [self _rdControlBlockContext].onTouchDragEnter = onTouchDragEnter;
}

- (void (^)(UIControl *))onTouchDragEnter
{
    return [self _rdControlBlockContext].onTouchDragEnter;
}


- (void)setOnTouchDragExit:(void (^)(UIControl *control))onTouchDragExit;
{
    [self _rdControlBlockContext].onTouchDragOutside = onTouchDragExit;
}

- (void (^)(UIControl *))onTouchDragExit
{
    return [self _rdControlBlockContext].onTouchDragExit;
}


// Touch Up

- (void)setOnTouchUpInside:(void (^)(UIControl *))onTouchUpInside
{
    [self _rdControlBlockContext].onTouchUpInside = onTouchUpInside;
}

- (void (^)(UIControl *))onTouchUpInside
{
    return [self _rdControlBlockContext].onTouchUpInside;
}

- (void)setOnTouchUpOutside:(void (^)(UIControl *))onTouchUpOutside
{
    [self _rdControlBlockContext].onTouchUpOutside = onTouchUpOutside;
}

- (void (^)(UIControl *))onTouchUpOutside
{
    return [self _rdControlBlockContext].onTouchUpOutside;
}


- (_RDControlBlockContext *)_rdControlBlockContext
{
    _RDControlBlockContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdControlBlockContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDControlBlockContext alloc] init];
        [controlBlock bindWithControl:self];
        objc_setAssociatedObject(self, @selector(_rdControlBlockContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}


@end
