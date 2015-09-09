//
//  ViewController.m
//  InstaKilo
//
//  Created by Katherine Peterson on 2015-09-09.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ViewController.h"
#import "Photos.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property(nonatomic) NSDictionary *photosBySubject;
@property(nonatomic) NSDictionary *photosByLocation;
@property (strong, nonatomic) IBOutlet UICollectionView *photoCollection;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Photos *leila = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_1950"] Subject:@"Family" Location:@"Edmonton"];
    Photos *hackFort = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_1973"] Subject:@"Travel" Location:@"Boise"];
    Photos *travelMap = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_2061"] Subject:@"Travel" Location:@"Calgary"];
    Photos *EEOR = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_2120"] Subject:@"Travel" Location:@"Canmore"];
    Photos *proofYYC = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_2174"] Subject:@"Food & Drink" Location:@"Calgary"];
    Photos *condoCDs = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_2226"] Subject:@"Music" Location:@"Medicine Hat"];
    Photos *indieStat = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_2321"] Subject:@"Music" Location:@"Amsterdam"];
    Photos *afternoonTea = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_2379"] Subject:@"Food & Drink" Location:@"Calgary"];
    Photos *drummheller = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_2474"] Subject:@"Family" Location:@"Drumheller"];
    Photos *giantChairs = [[Photos alloc]initWithPhoto:[UIImage imageNamed:@"IMG_2633"] Subject:@"Family" Location:@"Canmore"];
    
    self.photosBySubject = @{@"Family":@[leila, drummheller, giantChairs],
                             @"Travel":@[hackFort, travelMap, EEOR],
                             @"Food & Drink":@[proofYYC, afternoonTea],
                             @"Music":@[condoCDs, indieStat]};
    
    self.photosByLocation = @{@"Edmonton":@[leila],
                              @"Drumheller": @[drummheller],
                              @"Boise":@[hackFort],
                              @"Calgary":@[travelMap, proofYYC, afternoonTea],
                              @"Canmore":@[EEOR, giantChairs],
                              @"Medicine Hat":@[condoCDs],
                              @"Amsterdam":@[indieStat]};
    
    [self.photoCollection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"instaKiloCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    if (view == subject) {
        NSString *subject = [[self.photosBySubject allKeys] objectAtIndex:section];
        NSArray *subjectPhotos = [self.photosBySubject objectForKey:subject];
        return subjectPhotos.count;
    }
    else {
        NSString *location = [[self.photosByLocation allKeys] objectAtIndex:section];
        NSArray *locationPhotos = [self.photosByLocation objectForKey:location];
        return locationPhotos.count;
    }

}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    if (collectionView == subject) {
        NSArray *subjects = [self.photosBySubject allKeys];
        return subjects.count;
    }
    else {
        NSArray *locations = [self.photosByLocation allKeys];
        return locations.count;
    }
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"instaKiloCell " forIndexPath:indexPath];
    cell.backgroundColor = [UIColor purpleColor];
    return cell;
}

@end
