//
// InterfaceController.m
// IntuitWear WatchKit Extension
//
// Copyright (c) 2015 Intuit Inc.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.”

#import "InterfaceController.h"
@import IntuitWearKit;

@interface InterfaceController()

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

- (void)handleActionWithIdentifier:(NSString *)identifier
             forRemoteNotification:(NSDictionary *)remoteNotification {
    IWearNotificationContent *notificationContent = [[IWearNotificationContent alloc] initWithString:[remoteNotification objectForKey:@"payload" ] error:nil];
    if([identifier isEqualToString:@"viewOverdueInvoices"]) {
        int total = (int) [notificationContent.pages count];
        NSMutableArray *controllerNames = [[NSMutableArray alloc] init];
        for(int x = 0; x < total; x++) {
            [controllerNames addObject:@"pageController"];
        }
        NSLog(@"%@", notificationContent.pages);
        [self presentControllerWithNames:controllerNames contexts:notificationContent.pages];
    }

}

@end



