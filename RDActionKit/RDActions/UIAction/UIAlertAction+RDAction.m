//
//  UIAlertAction+RDAction.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "UIAlertAction+RDAction.h"

#import "RDAction.h"

@implementation UIAlertAction (RDAction)


+ (instancetype)actionWithTitle:(nullable NSString *)title style:(UIAlertActionStyle)style rdAction:(id<RDActionProtocol>)action
{
    if (action) {
        
        return [[self class] actionWithTitle:title style:style handler:^(UIAlertAction * _Nonnull alertAction) {
            [action execute];
        }];
        
    } else {
        return [[self class] actionWithTitle:title style:style handler:nil];
    }
}

@end
