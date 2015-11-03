//
//  _RDTextFieldBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/29/15.
//
//

#import <Foundation/Foundation.h>

@class UITextField;

@interface _RDTextFieldBlockContext : NSObject

@property (nonatomic, copy) void (^onEditingDidBegin)(UITextField* control);

@property (nonatomic, copy) void (^onEditingChanged)(UITextField* control);

@property (nonatomic, copy) void (^onEditingDidEnd)(UITextField* control);
@property (nonatomic, copy) void (^onEditingDidEndOnExit)(UITextField* control);


- (void)bindWithTextField:(UITextField*)control;

@end
