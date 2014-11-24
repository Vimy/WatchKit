//
//  TableDetail.h
//  WatchKit-Fun
//
//  Created by Matthias Vermeulen on 24/11/14.
//  Copyright (c) 2014 Noizy. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface TableDetail : WKInterfaceController
@property (strong, nonatomic) IBOutlet WKInterfaceImage *foodImage;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *foodLabel;

@end
