//
//  SubjectSorter.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

@import  UIKit;
#import "PhotoManager.h"
#import "Album.h"

@interface SubjectSorter : NSObject <UICollectionViewDataSource>
@property NSArray <Album*>*albums;
@property (nonatomic) NSArray *data;
-(instancetype)initWithPhotosArray:(NSArray <PhotoObject*>*)photos;

@end
