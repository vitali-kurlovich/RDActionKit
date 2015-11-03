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
- (instancetype)initWithActionItem:(RDActionItem*)actionItem style:(UIBarButtonItemStyle)style;

@end
