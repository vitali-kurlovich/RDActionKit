//
//  UIBarButtonItem+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

@import UIKit;

@interface UIBarButtonItem (RDBlock)

@property (nonatomic, readonly) void (^onActionBlock)(UIBarButtonItem* barButtonItem);

- (void)setOnActionBlock:(void (^)(UIBarButtonItem *barButtonItem))onActionBlock;

@end
