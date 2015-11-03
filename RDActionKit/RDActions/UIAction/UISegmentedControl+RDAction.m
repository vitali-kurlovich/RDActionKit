//
//  UISegmentedControl+RDAction.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/3/15.
//
//

#import "UISegmentedControl+RDAction.h"

#import <objc/runtime.h>

#import "_RDActionCollectionContext.h"


@interface _RDSegmentedControlActionCollectionContext : _RDActionCollectionContext
@property (nonatomic, weak) UISegmentedControl* control;
- (void)bindWithSegmentedControl:(UISegmentedControl*)segmentedControl;
@end

@implementation UISegmentedControl (RDAction)

- (void)setRDAction:(nullable id<RDActionProtocol>)action forSegmentAtIndex:(NSUInteger)segment
{
    [[self _rdSegmentedControlActionCollectionContext] setAction:action forKey:@(segment)];
}

- (nullable id<RDActionProtocol>)rDActionForSegmentAtIndex:(NSUInteger)segment
{
    return [[self _rdSegmentedControlActionCollectionContext] actionForKey:@(segment)];
}

- (_RDSegmentedControlActionCollectionContext *)_rdSegmentedControlActionCollectionContext
{
    _RDSegmentedControlActionCollectionContext *controlBlock = objc_getAssociatedObject(self, @selector(_rdSegmentedControlActionCollectionContext));
    
    if (controlBlock == nil)
    {
        controlBlock = [[_RDSegmentedControlActionCollectionContext alloc] init];
        [controlBlock bindWithSegmentedControl:self];
        
        objc_setAssociatedObject(self, @selector(_rdSegmentedControlActionCollectionContext), controlBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return controlBlock;
}

@end

@implementation _RDSegmentedControlActionCollectionContext

- (void)bindWithSegmentedControl:(UISegmentedControl*)segmentedControl
{
    _control = segmentedControl;
}


- (void)setAction:(nullable id<RDActionProtocol>)action forKey:(nonnull id)key
{
    NSInteger lastcount = [self count];
    
    [super setAction:action forKey:key];
    
    
    if (lastcount == 0 && [self count] > 0)
    {
        [self.control addTarget:self
                         action:@selector(_onChangeValue:)
               forControlEvents:UIControlEventValueChanged];
    }
}

- (void)removeActionForKey:(nonnull id)key
{
    NSInteger lastcount = [self count];
    
    [super removeActionForKey:key];
    
    if (lastcount > 0 && [self count] == 0)
    {
        [self.control removeTarget:self
                         action:@selector(_onChangeValue:)
               forControlEvents:UIControlEventValueChanged];
    }
}

- (void)_onChangeValue:(UISegmentedControl*)sender
{
    NSInteger segmentIndex = sender.selectedSegmentIndex;
    
    if (UISegmentedControlNoSegment != segmentIndex)
    {
        [self executeActionForKey:@(segmentIndex)];
    }
    
}

@end
