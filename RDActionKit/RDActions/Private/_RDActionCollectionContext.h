//
//  _RDActionCollectionContext.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import <Foundation/Foundation.h>

#import "RDAction.h"

@interface _RDActionCollectionContext : NSObject

@property (readonly) NSUInteger count;

- (nullable id<RDActionProtocol>)actionForKey:(nonnull id)key;

- (void)setAction:(nullable id<RDActionProtocol>)action forKey:(nonnull id)key;
- (void)removeActionForKey:(nonnull id)key;
- (void)removeAllActions;

- (void)executeActionForKey:(nonnull id)key;


@end
