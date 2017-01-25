//
//  PhotoManager.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoObject.h"
#import "Album.h"
@class SubjectSorter;




//@protocol PhotoManagerDelegate <NSObject>;
//@property NSString *section;
//
//-(NSArray *)createPhotos;
//
//@end


@interface PhotoManager : NSObject
@property NSArray <PhotoObject *>*photos;
@property (weak,nonatomic) id photoManagerDelegate;
@property (nonatomic) SubjectSorter *subjects;



@end
