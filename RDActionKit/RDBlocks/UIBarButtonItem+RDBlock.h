//
//  UIBarButtonItem+RDBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

@import UIKit;

@interface UIBarButtonItem (RDBlock)

@property (nonatomic, nullable, readonly) void (^ onActionBlock)( UIBarButtonItem* _Nonnull  barButtonItem);



- (nonnull instancetype)initWithImage:(nullable UIImage *)image style:(UIBarButtonItemStyle)style actionBlock:(void (^__nullable)(UIBarButtonItem* _Nonnull barButtonItem))actionBlock;

- (nonnull instancetype)initWithImage:(nullable UIImage *)image landscapeImagePhone:(nullable UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style actionBlock:(void (^__nullable)(UIBarButtonItem* _Nonnull barButtonItem))actionBlock;

- (nonnull instancetype)initWithTitle:(nullable NSString *)title style:(UIBarButtonItemStyle)style actionBlock:(void (^__nullable)(UIBarButtonItem * _Nonnull barButtonItem))actionBlock;

- (nonnull instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem actionBlock:(void (^__nullable)(UIBarButtonItem* _Nonnull barButtonItem))actionBlock;



- (void)setOnActionBlock:(void (^ __nullable)( UIBarButtonItem* _Nonnull barButtonItem))onActionBlock;

@end
