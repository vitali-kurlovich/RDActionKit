//
//  UIPageControl+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

@import UIKit;

@interface UIPageControl (RDBlock)
@property (nonatomic, nullable, readonly) void (^onValueChanged)(UIPageControl* _Nonnull control);

- (void)setOnValueChanged:(void (^__nullable)(UIPageControl* _Nonnull control))onValueChanged;

@end
