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


- (instancetype)initWithImage:(nullable UIImage *)image style:(UIBarButtonItemStyle)style actionBlock:(void (^)(UIBarButtonItem *))actionBlock
{
    self = [self initWithImage:image style:style target:nil action:nil];
    if (self)
    {
        [self setOnActionBlock:actionBlock];
    }
    return self;
}

- (instancetype)initWithImage:(nullable UIImage *)image landscapeImagePhone:(nullable UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style actionBlock:(void (^)(UIBarButtonItem *))actionBlock
{
    self = [self initWithImage:image landscapeImagePhone:landscapeImagePhone style:style target:nil action:nil];
    if (self)
    {
        [self setOnActionBlock:actionBlock];
    }
    return self;
}

- (instancetype)initWithTitle:(nullable NSString *)title style:(UIBarButtonItemStyle)style actionBlock:(void (^)(UIBarButtonItem *))actionBlock
{
    self = [self initWithTitle:title style:style target:nil action:nil];
    if (self)
    {
        [self setOnActionBlock:actionBlock];
    }
    return self;
}

- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem actionBlock:(void (^)(UIBarButtonItem *))actionBlock
{
    self = [self initWithBarButtonSystemItem:systemItem target:nil action:nil];
    if (self)
    {
        [self setOnActionBlock:actionBlock];
    }
    return self;
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
