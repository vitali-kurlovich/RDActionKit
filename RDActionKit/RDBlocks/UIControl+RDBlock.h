//
//  UIControl+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

@import UIKit;

@interface UIControl (RDBlock)

@property (nonatomic, nullable, readonly) void (^onTouchDown)(UIControl* _Nonnull control);
@property (nonatomic, nullable, readonly) void (^onTouchDownRepeat)(UIControl* _Nonnull control);

@property (nonatomic, nullable, readonly) void (^onTouchDragInside)(UIControl* _Nonnull control);
@property (nonatomic, nullable, readonly) void (^onTouchDragOutside)(UIControl* _Nonnull control);
@property (nonatomic, nullable, readonly) void (^onTouchDragEnter)(UIControl* _Nonnull control);
@property (nonatomic, nullable, readonly) void (^onTouchDragExit)(UIControl* _Nonnull control);

@property (nonatomic, nullable, readonly) void (^onTouchUpInside)(UIControl* _Nonnull control);
@property (nonatomic, nullable, readonly) void (^onTouchUpOutside)(UIControl* _Nonnull control);

- (void)setOnTouchDown:(void (^__nullable)(UIControl* _Nonnull control))onTouchDown;
- (void)setOnTouchDownRepeat:(void (^__nullable)(UIControl* _Nonnull control))onTouchDownRepeat;

- (void)setOnTouchDragInside:(void (^__nullable)(UIControl* _Nonnull control))onTouchDragInside;
- (void)setOnTouchDragOutside:(void (^__nullable)(UIControl* _Nonnull control))onTouchDragOutside;
- (void)setOnTouchDragEnter:(void (^__nullable)(UIControl* _Nonnull control))onTouchDragEnter;
- (void)setOnTouchDragExit:(void (^__nullable)(UIControl* _Nonnull control))onTouchDragExit;

- (void)setOnTouchUpInside:(void (^__nullable)(UIControl* _Nonnull control))onTouchUpInside;
- (void)setOnTouchUpOutside:(void (^__nullable)(UIControl* _Nonnull control))onTouchUpOutside;

@end
