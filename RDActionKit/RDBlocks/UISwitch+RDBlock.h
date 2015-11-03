//
//  UISwitch+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <UIKit/UIKit.h>

@interface UISwitch (RDBlock)

@property (nonatomic, readonly) void (^onValueChanged)(UISwitch* control);

- (void)setOnValueChanged:(void (^)(UISwitch *control))onValueChanged;

@end
