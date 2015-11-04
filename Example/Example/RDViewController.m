//
//  RDViewController.m
//  RDActionKit
//
//  Created by Vitali Kurlovich on 11/02/2015.
//  Copyright (c) 2015 Vitali Kurlovich. All rights reserved.
//

#import "RDViewController.h"

#import <RDActionKit/RDActionKit.h>


@interface RDViewController ()
@property (nonatomic) IBOutlet UIButton* button;
@property (nonatomic) IBOutlet UISegmentedControl* segmentedControl;
@end

@implementation RDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    RDActionItem* actionItem = [[RDActionItem alloc] initWithAction:[RDAction actionWithBlock:^{
        NSLog(@"OnAction");
    }] text:@"Action 1" image:[UIImage imageNamed:@"star"]];
    
    RDActionItem* actionItem2 = [[RDActionItem alloc] initWithAction:[RDAction actionWithBlock:^{
        NSLog(@"OnAction 2");
    }] text:@"Action 2"];
    
    
    [self.segmentedControl setOnValueChanged:^(UISegmentedControl *  control) {
        NSLog(@"SelectedSegmentIndex: %@", @(control.selectedSegmentIndex));
    }];
    

    [self.button setRDActionItem:actionItem];
    
    [self.segmentedControl setRDActionItem:actionItem forSegmentAtIndex:0];
    [self.segmentedControl setRDActionItem:actionItem2 forSegmentAtIndex:1];
    
    
    self.toolbarItems = @[ [[UIBarButtonItem alloc] initWithActionItem:actionItem style:UIBarButtonItemStyleDone],
                           [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                           [[UIBarButtonItem alloc] initWithActionItem:actionItem2 style:UIBarButtonItemStylePlain],
                           ];
    
    __weak typeof(self) weakSelf = self;
    
    
   UIBarButtonItem* barItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction actionBlock:^(UIBarButtonItem *barButtonItem) {
        
        UIAlertController* controller = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Message" preferredStyle:UIAlertControllerStyleActionSheet];
        
        [controller addAction:[UIAlertAction actionWithRDActionItem:actionItem style:UIAlertActionStyleDefault]];
        [controller addAction:[UIAlertAction actionWithRDActionItem:actionItem2 style:UIAlertActionStyleDefault]];
        
        [weakSelf presentViewController:controller animated:YES completion:nil];
        
    }];

    self.navigationItem.rightBarButtonItem =  barItem;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.navigationController setToolbarHidden:NO];
}

@end
