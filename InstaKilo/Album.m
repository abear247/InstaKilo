//
//  Album.m
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Album.h"

@implementation Album

-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if(self){
        _identifier = name;
        _photoCollection = [NSMutableArray new];
    }
    return self;
}

@end
