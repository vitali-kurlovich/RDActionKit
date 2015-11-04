//
//  UISlider+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <UIKit/UIKit.h>

@interface UISlider (RDBlock)

@property (nonatomic, nullable, readonly) void (^onValueChanged)(UISlider* _Nonnull control);

- (void)setOnValueChanged:(void (^__nullable)(UISlider* _Nonnull control))onValueChanged;

@end
