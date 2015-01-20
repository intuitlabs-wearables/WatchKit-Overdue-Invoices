//
//  PageController.m
//  IntuitWear
//
//  Created by Maidasani, Hitesh on 12/10/14.
//  Copyright (c) 2014 intuit. All rights reserved.
//

#import "PageController.h"

@implementation PageController
- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    
    if (self) {
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ init PageController", self);
        [self.invoiceName setText:[NSString stringWithFormat:@"%@", [context objectForKey:@"pageTitle"]]];
        [self.invoiceAmt setText:[NSString stringWithFormat:@"%@", [context objectForKey:@"pageText"]]];
        [self.group setBackgroundImageNamed: [context objectForKey:@"pageBackground"]];
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
