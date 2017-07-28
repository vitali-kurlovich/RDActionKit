# RDActionKit
[![Version](https://img.shields.io/cocoapods/v/RDActionKit.svg?style=flat)](http://cocoapods.org/pods/RDActionKit)
[![License](https://img.shields.io/cocoapods/l/RDActionKit.svg?style=flat)](http://cocoapods.org/pods/RDActionKit)
[![Platform](https://img.shields.io/cocoapods/p/RDActionKit.svg?style=flat)](http://cocoapods.org/pods/RDActionKit)

=================
Collection of categories on UIControl, UIButton, UITextField etc. to use inline block callbacks and wrapped into the object callbacks.

RDBlocks
=================
Example
```objc
[self.segmentedControl setOnValueChanged:^(UISegmentedControl *  control) {
    NSLog(@"SelectedSegmentIndex: %@", @(control.selectedSegmentIndex));
}];
```
UIControl+RDBlock.h
================
```objc
- (void)setOnTouchDown:(void (^)(UIControl* control))onTouchDown;
- (void)setOnTouchDownRepeat:(void (^)(UIControl* control))onTouchDownRepeat;

- (void)setOnTouchDragInside:(void (^)(UIControl* control))onTouchDragInside;
- (void)setOnTouchDragOutside:(void (^)(UIControl* control))onTouchDragOutside;
- (void)setOnTouchDragEnter:(void (^)(UIControl* control))onTouchDragEnter;
- (void)setOnTouchDragExit:(void (^)(UIControl* control))onTouchDragExit;

- (void)setOnTouchUpInside:(void (^)(UIControl*  control))onTouchUpInside;
- (void)setOnTouchUpOutside:(void (^)(UIControl*  control))onTouchUpOutside;
```

UITextField+RDBlock.h
================
```objc
- (void)setOnEditingDidBegin:(void (^)(UITextField* textField))onEditingDidBegin;
- (void)setOnEditingChanged:(void (^)(UITextField* textField))onEditingChanged;
- (void)setOnEditingDidEnd:(void (^)(UITextField* textField))onEditingDidEnd;
- (void)setOnEditingDidEndOnExit:(void (^)(UITextField* textField))onEditingDidEndOnExit;
```

UISegmentedControl+RDBlock.h, (UISlider, UIStepper, UISwitch)
================
```objc
- (void)setOnValueChanged:(void (^)(<UISegmentedControl, UISlider, UIStepper, UISwitch>* control))onValueChanged;
```

UIBarButtonItem+RDBlock.h
================
```objc
- (instancetype)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style actionBlock:(void (^)(UIBarButtonItem* barButtonItem))actionBlock;
- (instancetype)initWithImage:(nullable UIImage *)image landscapeImagePhone:(UIImage*)landscapeImagePhone style:(UIBarButtonItemStyle)style actionBlock:(void (^)(UIBarButtonItem* barButtonItem))actionBlock;
- (instancetype)initWithTitle:(nullable NSString *)title style:(UIBarButtonItemStyle)style actionBlock:(void (^)(UIBarButtonItem * barButtonItem))actionBlock;
- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem actionBlock:(void (^)(UIBarButtonItem* barButtonItem))actionBlock;

- (void)setOnActionBlock:(void (^)( UIBarButtonItem* barButtonItem))onActionBlock;
```


RDActions
=================
Example
```objc
RDActionItem* actionItem = [[RDActionItem alloc] initWithAction:[RDAction actionWithBlock:^{
        NSLog(@"OnAction");
    }] text:@"Action 1" image:[UIImage imageNamed:@"star"]];

RDActionItem* actionItem2 = [[RDActionItem alloc] initWithAction:[RDAction actionWithBlock:^{
        NSLog(@"OnAction 2");
    }] text:@"Action 2"];

    [self.segmentedControl setRDActionItem:actionItem forSegmentAtIndex:0];
    [self.segmentedControl setRDActionItem:actionItem2 forSegmentAtIndex:1];

UIAlertController* controller = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Message" preferredStyle:UIAlertControllerStyleActionSheet];

       [controller addAction:[UIAlertAction actionWithRDActionItem:actionItem style:UIAlertActionStyleDefault]];
       [controller addAction:[UIAlertAction actionWithRDActionItem:actionItem2 style:UIAlertActionStyleDefault]];

       [self presentViewController:controller animated:YES completion:nil];
```

Command pattern
```objc
@protocol RDActionProtocol <NSObject>
- (void)execute;
@end

@interface RDAction : NSObject<RDActionProtocol>
+ (instancetype)action;
+ (instancetype)actionWithBlock:(void (^)())actionBlock;
+ (instancetype)actionWithInvocation:(NSInvocation*)invacation;
@end

@interface RDActionItem : NSObject<RDActionProtocol>
@property (nonatomic, readonly) id<RDActionProtocol> action;

@property (nonatomic, copy, readonly) NSString* text;
@property (nonatomic, copy, readonly) NSString* detailText;
@property (nonatomic, readonly) UIImage* image;
@end
```

UIButton (UIBarButtonItem) +RDAction.h
UIButton (UIBarButtonItem) +RDActionItem.h
===========
```objc
- (void)setRDAction:(id<RDActionProtocol>)action;
- (void)setRDActionItem:(RDActionItem*)actionItem;
```

UISegmentedControl+RDAction.h
UISegmentedControl+RDActionItem.h
=======================
```objc
- (void)setRDAction:(id<RDActionProtocol>)action forSegmentAtIndex:(NSUInteger)segment;
- (void)setRDActionItem:(RDActionItem*)actionItem forSegmentAtIndex:(NSUInteger)segment;
```

UIAlertAction+RDAction.h
UIAlertAction+RDActionItem.h
=======================
```objc
+ (instancetype)actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style rdAction:(id<RDActionProtocol>)action;
+ (instancetype)actionWithRDActionItem:(RDActionItem*)actionItem style:(UIAlertActionStyle)style
```


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Xcode 7

## Installation

RDActionKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RDActionKit"
```

## Author

Vitali Kurlovich, vitalikurlovich@gmail.com

## License

RDActionKit is available under the MIT license. See the LICENSE file for more info.
