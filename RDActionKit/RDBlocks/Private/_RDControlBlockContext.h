//
//  _RDControlBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <Foundation/Foundation.h>

@class UIControl;

@interface _RDControlBlockContext : NSObject
@property (nonatomic, copy) void (^onTouchDown)(UIControl* control);
@property (nonatomic, copy) void (^onTouchDownRepeat)(UIControl* control);

@property (nonatomic, copy) void (^onTouchDragInside)(UIControl* control);
@property (nonatomic, copy) void (^onTouchDragOutside)(UIControl* control);
@property (nonatomic, copy) void (^onTouchDragEnter)(UIControl* control);
@property (nonatomic, copy) void (^onTouchDragExit)(UIControl* control);

@property (nonatomic, copy) void (^onTouchUpInside)(UIControl* control);
@property (nonatomic, copy) void (^onTouchUpOutside)(UIControl* control);

- (void)bindWithControl:(UIControl*)control;
@end

