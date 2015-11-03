//
//  _RDPageControlBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <Foundation/Foundation.h>

@class UIPageControl;

@interface _RDPageControlBlockContext : NSObject

@property (nonatomic, copy) void (^onValueChanged)(UIPageControl* control);
- (void)bindWithPageControl:(UIPageControl*)slider;

@end
