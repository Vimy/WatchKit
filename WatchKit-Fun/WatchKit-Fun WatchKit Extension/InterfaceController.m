//
//  InterfaceController.m
//  WatchKit-Fun WatchKit Extension
//
//  Created by Matthias Vermeulen on 24/11/14.
//  Copyright (c) 2014 Noizy. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *walvisLabel;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self)
    {
        [self.walvisLabel setHidden:YES];
               // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}
- (IBAction)FeedButton
{
    [self presentControllerWithName:@"TableView" context:nil];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}
- (IBAction)walvisTapped
{
    [self.walvisLabel setHidden:NO];
}


@end



