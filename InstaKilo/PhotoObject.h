//
//  PhotoObject.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

@import UIKit;

@interface PhotoObject : NSObject
@property UIImage *image;
-(instancetype)initWithName:(NSString *)name;
@end
