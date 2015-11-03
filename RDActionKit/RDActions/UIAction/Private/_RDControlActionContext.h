//
//  _RDControlActionContext.h
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "RDAction.h"

@interface _RDControlActionContext : NSObject
@property (nonatomic) id<RDActionProtocol> action;

- (void)bindWithControl:(UIControl*)control;


- (void)registerEvent:(UIControlEvents)event;

- (void)unRegisterEvent:(UIControlEvents)event;

@end
