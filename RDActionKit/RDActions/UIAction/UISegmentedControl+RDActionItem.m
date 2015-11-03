//
//  UISegmentedControl+RDActionItem.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/3/15.
//
//

#import "UISegmentedControl+RDActionItem.h"

#import "RDActionItem.h"
#import "UISegmentedControl+RDAction.h"

@implementation UISegmentedControl (RDActionItem)


- (instancetype)initWithRDActionItem:(NSArray<RDActionItem*> *)actionItems
{
    NSMutableArray * titlesAndImages = [NSMutableArray arrayWithCapacity:actionItems.count];
    NSMutableArray * actions = [NSMutableArray arrayWithCapacity:actionItems.count];
    
    
    for (RDActionItem* item in actionItems) {
        if (item.image)
        {
            [titlesAndImages addObject:item.image];
        } else if (item.text) {
            [titlesAndImages addObject:item.text];
        } else if (item.detailText)
        {
            [titlesAndImages addObject:item.detailText];
        } else {
            continue;
        }
        
        [actions addObject:item];
    }
    
    self = [self initWithItems:titlesAndImages];
    
    if (self)
    {
        for (NSInteger index = 0; index < actions.count; index++)
        {
            [self setRDAction:actions[index] forSegmentAtIndex:index];
        }
    }
    
    return self;
}

- (void)setRDActionItem:(nullable RDActionItem*)actionItem forSegmentAtIndex:(NSUInteger)segment
{
    if (actionItem.image)
    {
        [self setImage:actionItem.image forSegmentAtIndex:segment];
    } else {
        [self setTitle:actionItem.text forSegmentAtIndex:segment];
    }

    [self setRDAction:actionItem forSegmentAtIndex:segment];
    
}


@end
