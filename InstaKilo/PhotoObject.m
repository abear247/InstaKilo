//
//  PhotoObject.m
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject


-(instancetype)initWithName:name subject:(NSString *)subject location:(NSString *)location{
    self = [super init];
    if(self){
        _image = [UIImage imageNamed:name];
        _subject = subject;
        _location = location;
    }
    return self;
}



@end
