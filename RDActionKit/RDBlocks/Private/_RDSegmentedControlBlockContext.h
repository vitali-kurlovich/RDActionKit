//
//  _RDSegmentedControlBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <Foundation/Foundation.h>


@class UISegmentedControl;

@interface _RDSegmentedControlBlockContext : NSObject

@property (nonatomic, copy) void (^onValueChanged)(UISegmentedControl* control);

- (void)bindWithSegmentedControl:(UISegmentedControl*)control;
@end
