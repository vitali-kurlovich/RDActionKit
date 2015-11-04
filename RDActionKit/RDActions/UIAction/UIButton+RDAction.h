//
//  UIButton+RDAction.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

@import UIKit;

#import "RDAction.h"

@interface UIButton (RDAction)

@property (nonatomic, nullable, readonly) id<RDActionProtocol> rDAction;
- (void)setRDAction:(nullable id<RDActionProtocol>)action;

@end
