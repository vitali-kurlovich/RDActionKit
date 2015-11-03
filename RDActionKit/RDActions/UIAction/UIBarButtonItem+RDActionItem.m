//
//  UIBarButtonItem+RDActionItem.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "UIBarButtonItem+RDActionItem.h"

#import "UIBarButtonItem+RDAction.h"

#import "RDActionItem.h"

@implementation UIBarButtonItem (RDActionItem)

- (instancetype)initWithActionItem:(RDActionItem*)actionItem style:(UIBarButtonItemStyle)style
{
    if (actionItem.image)
    {
        self = [self initWithImage:actionItem.image style:style target:nil action:nil];
    } else if (actionItem.text.length > 0) {
        self = [self initWithTitle:actionItem.text style:style target:nil action:nil];
    } else {
        self = [self initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:nil action:nil];
    }
    
   // dispatch_async(dispatch_get_main_queue(), ^{
        [self setRDAction:actionItem];
    //});
    
    
    return self;
}


@end
