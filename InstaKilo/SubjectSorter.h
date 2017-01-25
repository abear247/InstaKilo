//
//  SubjectSorter.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoManager.h"
#import "Album.h"

@interface SubjectSorter : NSObject
@property NSArray <Album*>*albums;
-(NSArray *)createPhotos;
@end
