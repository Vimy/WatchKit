//
//  Table.m
//  WatchKit-Fun
//
//  Created by Matthias Vermeulen on 24/11/14.
//  Copyright (c) 2014 Noizy. All rights reserved.
//

#import "Table.h"
#import  "TableDetail.h"

@implementation Table
{
    NSArray *Food;
}
- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self)
    {
        Food = @[@"Hamburger", @"Hotdog", @"Cyanide", @"Pasta", @"Frieten", @"Clerckies"];
        
        NSLog(@"%@ initWithContext", self);
        
        [self loadTableData];
    }
    return self;
}

- (void)loadTableData
{
    [self.table setNumberOfRows:[Food count] withRowType:@"tableRow"];
    
    for (NSInteger i = 0; i < self.table.numberOfRows; i++)
    {
        TableDetail *theRow = [self.table rowControllerAtIndex:i];
        [theRow.foodLabel setText:[Food objectAtIndex:i]];
        [theRow.foodImage setImage:[UIImage imageNamed:@"Hamburger.png"]];
        
    }
}

@end
