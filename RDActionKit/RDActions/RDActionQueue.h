//
//  RDActionQueue.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <Foundation/Foundation.h>

#import "RDAction.h"

@interface RDActionQueue : NSObject<RDActionProtocol>
@property (nonatomic, copy, readonly) NSArray<id<RDActionProtocol>>* actions;

- (void)removeAllActions;
- (void)addAction:(id<RDActionProtocol>)action;
- (void)removeAction:(id<RDActionProtocol>)action;
@end
