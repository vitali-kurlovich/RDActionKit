//
//  UISlider+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <UIKit/UIKit.h>

@interface UISlider (RDBlock)

@property (nonatomic, readonly) void (^onValueChanged)(UISlider* control);

- (void)setOnValueChanged:(void (^)(UISlider *control))onValueChanged;

@end
