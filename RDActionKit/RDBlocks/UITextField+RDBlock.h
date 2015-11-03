//
//  UITextField+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <UIKit/UIKit.h>

@interface UITextField (RDBlock)

@property (nonatomic, readonly) void (^onEditingDidBegin)(UITextField* control);
@property (nonatomic, readonly) void (^onEditingChanged)(UITextField* control);
@property (nonatomic, readonly) void (^onEditingDidEnd)(UITextField* control);
@property (nonatomic, readonly) void (^onEditingDidEndOnExit)(UITextField* control);

- (void)setOnEditingDidBegin:(void (^)(UITextField *textField))onEditingDidBegin;
- (void)setOnEditingChanged:(void (^)(UITextField *textField))onEditingChanged;
- (void)setOnEditingDidEnd:(void (^)(UITextField *textField))onEditingDidEnd;
- (void)setOnEditingDidEndOnExit:(void (^)(UITextField *textField))onEditingDidEndOnExit;

@end
