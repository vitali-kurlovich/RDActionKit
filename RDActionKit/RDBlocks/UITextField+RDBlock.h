//
//  UITextField+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <UIKit/UIKit.h>

@interface UITextField (RDBlock)

@property (nonatomic, nullable, readonly) void (^onEditingDidBegin)(UITextField* _Nonnull control);
@property (nonatomic, nullable, readonly) void (^onEditingChanged)(UITextField* _Nonnull control);
@property (nonatomic, nullable, readonly) void (^onEditingDidEnd)(UITextField* _Nonnull control);
@property (nonatomic, nullable, readonly) void (^onEditingDidEndOnExit)(UITextField* _Nonnull control);

- (void)setOnEditingDidBegin:(void (^__nullable)(UITextField* _Nonnull textField))onEditingDidBegin;
- (void)setOnEditingChanged:(void (^__nullable)(UITextField* _Nonnull textField))onEditingChanged;
- (void)setOnEditingDidEnd:(void (^__nullable)(UITextField* _Nonnull textField))onEditingDidEnd;
- (void)setOnEditingDidEndOnExit:(void (^__nullable)(UITextField* _Nonnull textField))onEditingDidEndOnExit;

@end
