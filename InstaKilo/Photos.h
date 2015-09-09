//
//  Photos.h
//  InstaKilo
//
//  Created by Katherine Peterson on 2015-09-09.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photos : NSObject

@property (nonatomic) NSString *photoSubject;
@property (nonatomic) NSString *photoLocation;
@property (nonatomic) UIImage *photo;

- (instancetype)initWithPhoto:(UIImage *) photo Subject:(NSString *)subject Location:(NSString *) location;

@end
