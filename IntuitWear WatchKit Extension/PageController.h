//
//  PageController.h
//  IntuitWear
//
//  Created by Maidasani, Hitesh on 12/10/14.
//  Copyright (c) 2014 intuit. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface PageController : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *invoiceName;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *invoiceAmt;


@end
