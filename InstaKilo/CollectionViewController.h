//
//  CollectionViewController.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoManager.h"


@interface CollectionViewController : UICollectionViewController
@property (nonatomic) PhotoManager *manager;
@end
