//
//  InterfaceController.m
//  IntuitWear WatchKit Extension
//
//  Created by Maidasani, Hitesh on 12/9/14.
//  Copyright (c) 2014 intuit. All rights reserved.
//

#import "InterfaceController.h"


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
    NSData *data = [[remoteNotification objectForKey:@"payload"] dataUsingEncoding:NSUTF8StringEncoding];
    id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    if([identifier isEqualToString:@"viewOverdueInvoices"]) {
      NSArray *pages = [json objectForKey:@"pages"];
        int total = (int) [pages count];
        NSMutableArray *controllerNames = [[NSMutableArray alloc] init];
        for(int x = 0; x < total; x++) {
            [controllerNames addObject:@"pageController"];
        }
        [self presentControllerWithNames:controllerNames contexts:pages];
    }

}

@end



