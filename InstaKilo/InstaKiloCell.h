//
//  InstaKiloCell.h
//  InstaKilo
//
//  Created by Katherine Peterson on 2015-09-09.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Photos;

@interface InstaKiloCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *photoImageView;
@property (nonatomic) Photos *photo;

@end
