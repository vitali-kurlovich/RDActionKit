//
//  _RDBarButtonItemBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <Foundation/Foundation.h>

@class UIBarButtonItem;

@interface _RDBarButtonItemBlockContext : NSObject

@property (nonatomic, copy) void (^onActionBlock)(UIBarButtonItem* buttonItem);

- (void)bindWithBarButtonItem:(UIBarButtonItem*)barButtonItem;

@end
