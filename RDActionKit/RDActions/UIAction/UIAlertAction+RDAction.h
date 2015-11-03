//
//  UIAlertAction+RDAction.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

@import UIKit;

#import "RDAction.h"

@interface UIAlertAction (RDAction)

+ (nonnull instancetype)actionWithTitle:(nullable NSString *)title style:(UIAlertActionStyle)style rdAction:( nullable id<RDActionProtocol>)action;

@end
