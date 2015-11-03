//
//  _RDSwitchBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <Foundation/Foundation.h>

@class UISwitch;

@interface _RDSwitchBlockContext : NSObject
@property (nonatomic, copy) void (^onValueChanged)(UISwitch* control);
- (void)bindWithSwitch:(UISwitch*)switchControl;
@end
