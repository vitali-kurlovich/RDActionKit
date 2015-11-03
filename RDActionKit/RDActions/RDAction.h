//
//  RDAction.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <Foundation/Foundation.h>


@protocol RDActionProtocol <NSObject>
- (void)execute;
@end

@interface RDAction : NSObject<RDActionProtocol>
+ (instancetype)action;
+ (instancetype)actionWithBlock:(void (^)())actionBlock;
+ (instancetype)actionWithInvocation:(NSInvocation*)invacation;

@end

