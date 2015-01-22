//
//  PageController.m
//  IntuitWear
//
//  Created by Maidasani, Hitesh on 12/10/14.
//  Copyright (c) 2014 intuit. All rights reserved.
//

#import "PageController.h"
@import IntuitWearKit;

@implementation PageController
- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    NSLog(@"%@", context);
    if (self) {
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ init PageController", self);
        Page *page = context;
        [self.invoiceName setText:[NSString stringWithFormat:@"%@", page.pageTitle]];
        [self.invoiceAmt setText:[NSString stringWithFormat:@"%@", page.pageText]];
        [self.group setBackgroundImageNamed: page.pageBackground];
    }
    return self;
}

- (void)willActivate {
    // This method is called when the controller is about to be visible to the wearer.
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when the controller is no longer visible.
    NSLog(@"%@ did deactivate", self);
}

@end
