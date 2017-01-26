//
//  LocationSorter.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

@import UIKit;
#import "PhotoManager.h"

@interface LocationSorter : NSObject <UICollectionViewDataSource>
@property NSArray <Album*>*albums;
@property (nonatomic) NSArray *data;
-(instancetype)initWithPhotosArray:(NSArray <PhotoObject*>*)photos;
@end
