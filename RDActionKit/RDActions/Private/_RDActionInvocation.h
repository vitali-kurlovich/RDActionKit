//
//  _RDActionInvocation.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "RDAction.h"

@interface _RDActionInvocation : RDAction
@property (nonatomic, readonly) NSInvocation* invacation;

- (instancetype)initWithInvocation:(NSInvocation*)invacation;
@end
