//
//  _RDSliderBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <Foundation/Foundation.h>

@class UISlider;

@interface _RDSliderBlockContext : NSObject
@property (nonatomic, copy) void (^onValueChanged)(UISlider* control);
- (void)bindWithSlider:(UISlider*)slider;
@end
