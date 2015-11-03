//
//  UIControl+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

@import UIKit;

@interface UIControl (RDBlock)
@property (nonatomic, readonly) void (^onTouchDown)(UIControl* control);
@property (nonatomic, readonly) void (^onTouchDownRepeat)(UIControl* control);

@property (nonatomic, readonly) void (^onTouchDragInside)(UIControl* control);
@property (nonatomic, readonly) void (^onTouchDragOutside)(UIControl* control);
@property (nonatomic, readonly) void (^onTouchDragEnter)(UIControl* control);
@property (nonatomic, readonly) void (^onTouchDragExit)(UIControl* control);

@property (nonatomic, readonly) void (^onTouchUpInside)(UIControl* control);
@property (nonatomic, readonly) void (^onTouchUpOutside)(UIControl* control);

- (void)setOnTouchDown:(void (^)(UIControl *control))onTouchDown;
- (void)setOnTouchDownRepeat:(void (^)(UIControl *control))onTouchDownRepeat;

- (void)setOnTouchDragInside:(void (^)(UIControl *control))onTouchDragInside;
- (void)setOnTouchDragOutside:(void (^)(UIControl *control))onTouchDragOutside;
- (void)setOnTouchDragEnter:(void (^)(UIControl *control))onTouchDragEnter;
- (void)setOnTouchDragExit:(void (^)(UIControl *control))onTouchDragExit;

- (void)setOnTouchUpInside:(void (^)(UIControl *control))onTouchUpInside;
- (void)setOnTouchUpOutside:(void (^)(UIControl *control))onTouchUpOutside;

@end
