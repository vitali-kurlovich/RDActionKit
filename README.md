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
- (void)setOnEditingDidBegin:(void (^)(UITextField*  textField))onEditingDidBegin;
- (void)setOnEditingChanged:(void (^)(UITextField*  textField))onEditingChanged;
- (void)setOnEditingDidEnd:(void (^)(UITextField*  textField))onEditingDidEnd;
- (void)setOnEditingDidEndOnExit:(void (^)(UITextField*  textField))onEditingDidEndOnExit;
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

- (instancetype)initWithTitle:(nullable NSString *)title style:(UIBarButtonItemStyle)style actionBlock:(void (^__nullable)(UIBarButtonItem * barButtonItem))actionBlock;

- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem actionBlock:(void (^__nullable)(UIBarButtonItem* barButtonItem))actionBlock;

- (void)setOnActionBlock:(void (^)( UIBarButtonItem* barButtonItem))onActionBlock;
```






## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

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
