//
//  UIPageControl+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <UIKit/UIKit.h>

@interface UIPageControl (RDBlock)
@property (nonatomic, readonly) void (^onValueChanged)(UIPageControl* control);

- (void)setOnValueChanged:(void (^)(UIPageControl *control))onValueChanged;

@end
