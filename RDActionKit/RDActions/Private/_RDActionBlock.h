//
//  _RDActionBlock.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "RDAction.h"

@interface _RDActionBlock : RDAction
@property (nonatomic, readonly) void (^actionBlock)();
- (instancetype)initWithBlock:(void (^)())action;

@end
