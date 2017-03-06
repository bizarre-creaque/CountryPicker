//
//  ViewController.m
//  CountryPickerDemo
//
//  Created by Nick Lockwood on 11/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize nameLabel, codeLabel, picker;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.picker.rowOffset = 100;
    [self.picker setCountryNames:@[
                                   @"Argentina",
                                   @"Chile",
                                   @"Colombia",
                                   @"Ecuador",
                                   @"Perú",
                                   @"Uruguay",
                                   @"Venezuela"
                                   ]];
    
    [self.picker setCountryCodes:@[
                                   @"AR",
                                   @"CL",
                                   @"CO",
                                   @"EC",
                                   @"PE",
                                   @"UY",
                                   @"VE"
                                  ]];
     
}

- (void)countryPicker:(__unused CountryPicker *)picker didSelectCountryWithName:(NSString *)name code:(NSString *)code
{
    self.nameLabel.text = name;
    self.codeLabel.text = code;
}

@end
