//
//  _RDBarButtonItemActionContext.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import <Foundation/Foundation.h>

#import "RDAction.h"

@interface _RDBarButtonItemActionContext : NSObject
@property (nonatomic) id<RDActionProtocol> action;

- (void)bindWithBarButtonItem:(UIBarButtonItem*)barButtonItem;

@end
