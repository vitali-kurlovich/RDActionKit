//
//  RDActionItem.m
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import "RDActionItem.h"

@implementation RDActionItem

- (instancetype)init
{
    return [self initWithAction:nil text:nil];
}

- (instancetype)initWithAction:(id<RDActionProtocol>)action text:(NSString*)text detailText:(NSString*)detailText image:(UIImage*)image
{
    self = [super init];
    
    if (self)
    {
        _action = action;
        _text = [text copy];
        _detailText = [detailText copy];
        _image = image;
    }
    
    return self;
}

- (instancetype)initWithAction:(id<RDActionProtocol>)action text:(NSString*)text detailText:(NSString*)detailText
{
    return [self initWithAction:action text:text detailText:detailText image:nil];
}

- (instancetype)initWithAction:(id<RDActionProtocol>)action text:(NSString*)text image:(UIImage*)image
{
    return [self initWithAction:action text:text detailText:nil image:image];
}

- (instancetype)initWithAction:(id<RDActionProtocol>)action text:(NSString*)text
{
    return [self initWithAction:action text:text detailText:nil image:nil];
}

+ (instancetype)actionItemWithAction:(id<RDActionProtocol>)action text:(NSString*)text detailText:(NSString*)detailText image:(UIImage*)image
{
    return [[self alloc] initWithAction:action text:text detailText:detailText image:image];
}

+ (instancetype)actionItemWithAction:(id<RDActionProtocol>)action text:(NSString*)text image:(UIImage*)image
{
    return [[self alloc] initWithAction:action text:text detailText:nil image:image];
}

+ (instancetype)actionItemWithAction:(id<RDActionProtocol>)action text:(NSString*)text
{
    return [[self alloc] initWithAction:action text:text detailText:nil image:nil];
}


- (void)execute
{
    [self.action execute];
}


- (NSString*)description
{
    return [@{
              @"action":self.action ? [self.action description]: @"(null)",
              @"text":self.text ? self.text : @"(null)",
              @"detailText":self.detailText ? self.detailText : @"(null)",
              } description];
}@end
