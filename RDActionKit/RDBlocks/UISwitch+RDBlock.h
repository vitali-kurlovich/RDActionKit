//
//  UISwitch+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <UIKit/UIKit.h>

@interface UISwitch (RDBlock)

@property (nonatomic, nullable, readonly) void (^onValueChanged)(UISwitch* _Nonnull control);

- (void)setOnValueChanged:(void (^__nullable)(UISwitch* _Nonnull control))onValueChanged;

@end
