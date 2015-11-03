//
//  UIControl+RDAction.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "UIControl+_RDAction.h"

#import <objc/runtime.h>

#import "_RDControlActionContext.h"

@implementation UIControl (_RDAction)


- (_RDControlActionContext *)_rdControlActionContext
{
    _RDControlActionContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdControlActionContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDControlActionContext alloc] init];
        [controlBlock bindWithControl:self];
        objc_setAssociatedObject(self, @selector(_rdControlActionContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}

@end
