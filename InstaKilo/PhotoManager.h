//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoObject.h"

@interface PhotoManager : NSObject
@property NSArray <PhotoObject *>*photos;
//-(PhotoObject *)photoObjectAtIndexPath:(NSIndexPath *)indexPath;

@end
