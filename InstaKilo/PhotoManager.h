//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

@import UIKit;
#import "PhotoObject.h"
#import "Album.h"
@class SubjectSorter;
@class LocationSorter;



//@protocol PhotoManagerDelegate <NSObject>;
//@property NSString *section;
//@property NSArray <Album*>*albums;
//-(NSArray *)createPhotos:(NSArray *)photos;
//
//@end


@interface PhotoManager : NSObject
@property NSArray <PhotoObject *>*photos;
@property (weak,nonatomic) id photoManagerDelegate;
@property (nonatomic) SubjectSorter *subjects;
@property (nonatomic) LocationSorter *locations;
@property (nonatomic) UICollectionView *collectionView;



@end
