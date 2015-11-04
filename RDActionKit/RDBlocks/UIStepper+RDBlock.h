//
//  UIStepper+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <UIKit/UIKit.h>

@interface UIStepper (RDBlock)

@property (nonatomic, nullable, readonly) void (^onValueChanged)(UIStepper* _Nonnull control);

- (void)setOnValueChanged:(void (^__nullable)(UIStepper* _Nonnull control))onValueChanged;

@end
