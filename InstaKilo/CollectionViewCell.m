//
//  CollectionViewCell.m
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

-(void)setPhotoObject:(PhotoObject *)photoObject{
    self.imageView.image = photoObject.image;
    _photoObject = photoObject;
}


@end
