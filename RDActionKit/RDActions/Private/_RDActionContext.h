//
//  _RDActionContext.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import <Foundation/Foundation.h>

#import "RDAction.h"

@interface _RDActionContext : NSObject<RDActionProtocol>
@property (nonatomic) id<RDActionProtocol> action;
@end
