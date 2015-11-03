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
+ (instancetype)actionWithRDActionItem:(RDActionItem*)actionItem style:(UIAlertActionStyle)style;
@end
