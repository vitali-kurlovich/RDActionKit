//
//  UISegmentedControl+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

@import UIKit;

@interface UISegmentedControl (RDBlock)
@property (nonatomic,nullable, readonly) void (^onValueChanged)(UISegmentedControl* _Nonnull control);

- (void)setOnValueChanged:(void (^__nullable)(UISegmentedControl* _Nonnull control))onValueChanged;
@end
