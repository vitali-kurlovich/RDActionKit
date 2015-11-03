//
//  UIAlertAction+RDActionItem.m
//  Pods
//
//  Created by Vitali Kurlovich on 11/2/15.
//
//

#import "UIAlertAction+RDActionItem.h"

#import "RDActionItem.h"
#import "UIAlertAction+RDAction.h"

@implementation UIAlertAction (RDActionItem)

+ (instancetype)actionWithRDActionItem:(RDActionItem*)actionItem style:(UIAlertActionStyle)style
{
    return [UIAlertAction actionWithTitle:actionItem.text style:style rdAction:actionItem];
}

@end
