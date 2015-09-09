//
//  Photos.m
//  InstaKilo
//
//  Created by Katherine Peterson on 2015-09-09.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Photos.h"

@implementation Photos

- (instancetype)initWithPhoto:(UIImage *) photo Subject:(NSString *)subject Location:(NSString *) location
{
    self = [super init];
    if (self) {
        self.photo = photo;
        self.photoSubject = subject;
        self.photoLocation = location;
    }
    return self;
}

@end
