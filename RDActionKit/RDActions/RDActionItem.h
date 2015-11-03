//
//  RDActionItem.h
//  UIKitAction
//
//  Created by Vitali Kurlovich on 10/30/15.
//
//

#import <Foundation/Foundation.h>

#import "RDAction.h"

@class UIImage;

@interface RDActionItem : NSObject<RDActionProtocol>
@property (nonatomic, readonly) id<RDActionProtocol> action;

@property (nonatomic, copy, readonly) NSString* text;
@property (nonatomic, copy, readonly) NSString* detailText;
@property (nonatomic, readonly) UIImage* image;

- (instancetype)initWithAction:(id<RDActionProtocol>)action text:(NSString*)text detailText:(NSString*)detailText image:(UIImage*)image NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithAction:(id<RDActionProtocol>)action text:(NSString*)text image:(UIImage*)image;
- (instancetype)initWithAction:(id<RDActionProtocol>)action text:(NSString*)text;

+ (instancetype)actionItemWithAction:(id<RDActionProtocol>)action text:(NSString*)text detailText:(NSString*)detailText image:(UIImage*)image;
+ (instancetype)actionItemWithAction:(id<RDActionProtocol>)action text:(NSString*)text image:(UIImage*)image;
+ (instancetype)actionItemWithAction:(id<RDActionProtocol>)action text:(NSString*)text;

@end
