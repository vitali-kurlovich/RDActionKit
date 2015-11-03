//
//  UISegmentedControl+RDActionItem.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/3/15.
//
//

@import UIKit;

@class RDActionItem;

@interface UISegmentedControl (RDActionItem)

- (nonnull instancetype)initWithRDActionItem:(nullable NSArray<RDActionItem*> *)actionItems;

- (void)setRDActionItem:(nullable RDActionItem*)actionItem forSegmentAtIndex:(NSUInteger)segment;
@end
