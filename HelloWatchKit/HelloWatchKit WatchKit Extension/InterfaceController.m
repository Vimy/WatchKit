//
//  InterfaceController.m
//  HelloWatchKit WatchKit Extension
//
//  Created by Matthias Vermeulen on 24/11/14.
//  Copyright (c) 2014 Noizy. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (strong, nonatomic) IBOutlet WKInterfaceImage *watchImage;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context
{
    self = [super initWithContext:context];
    if (self)
    {
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
       
    }
    return self;
}

- (void)willActivate
{
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

- (IBAction)button1
{
     [self.watchImage setImage:[UIImage imageNamed:@"animal"]];
}

- (IBAction)button2
{
    [self.watchImage setImage:[UIImage imageNamed:@"hamburger-icon"]];
}

@end



