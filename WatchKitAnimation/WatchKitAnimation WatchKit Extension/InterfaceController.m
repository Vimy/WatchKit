//
//  InterfaceController.m
//  WatchKitAnimation WatchKit Extension
//
//  Created by Matthias Vermeulen on 25/11/14.
//  Copyright (c) 2014 Noizy. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (strong, nonatomic) IBOutlet WKInterfaceImage *animatedImage;

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

- (IBAction)playAnimation {
    // Uses images in Watch app bundle.
   
    
    [self.animatedImage setImageNamed:@"foto"];
    [self.animatedImage startAnimating];
    
    // Animate with a specific range, duration, and repeat count.
    [self.animatedImage startAnimatingWithImagesInRange:NSMakeRange(0, 7) duration:1.0 repeatCount:0];
}
- (IBAction)stopMenuPressed
{
    [self.animatedImage stopAnimating];
   
}


- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



