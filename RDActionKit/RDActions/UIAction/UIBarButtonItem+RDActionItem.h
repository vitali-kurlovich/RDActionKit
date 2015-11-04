//
//  UIBarButtonItem+RDActionItem.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

@import UIKit;

@class RDActionItem;

@interface UIBarButtonItem (RDActionItem)
- (nonnull instancetype)initWithActionItem:(nullable RDActionItem*)actionItem style:(UIBarButtonItemStyle)style;

@end
