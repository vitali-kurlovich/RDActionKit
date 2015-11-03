//
//  UISegmentedControl+RDAction.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/3/15.
//
//

@import UIKit;

#import "RDAction.h"


@interface UISegmentedControl (RDAction)


- (void)setRDAction:(nullable id<RDActionProtocol>)action forSegmentAtIndex:(NSUInteger)segment;
- (nullable id<RDActionProtocol>)rDActionForSegmentAtIndex:(NSUInteger)segment;

@end
