//
//  UISegmentedControl+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <UIKit/UIKit.h>

@interface UISegmentedControl (RDBlock)
@property (nonatomic, readonly) void (^onValueChanged)(UISegmentedControl* control);

- (void)setOnValueChanged:(void (^)(UISegmentedControl *control))onValueChanged;
@end
