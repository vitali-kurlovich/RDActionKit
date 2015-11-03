//
//  UIButton+RDActionItem.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "UIButton+RDActionItem.h"

#import "RDActionItem.h"
#import "UIButton+RDAction.h"

@implementation UIButton (RDActionItem)
- (void)setRDActionItem:(RDActionItem*)actionItem
{
    [self setRDAction:actionItem];
    
    [self setTitle:actionItem.text forState:UIControlStateNormal];
    [self setImage:actionItem.image forState:UIControlStateNormal];
    
}
@end
