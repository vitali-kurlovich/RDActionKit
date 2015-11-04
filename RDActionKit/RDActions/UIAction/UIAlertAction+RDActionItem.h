//
//  UIAlertAction+RDActionItem.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

@import UIKit;

@class RDActionItem;

@interface UIAlertAction (RDActionItem)
+ (nonnull instancetype)actionWithRDActionItem:(nullable RDActionItem*)actionItem style:(UIAlertActionStyle)style;
@end
