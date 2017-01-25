//
//  PhotoManager.m
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "PhotoManager.h"

@implementation PhotoManager

-(instancetype)init{
    self = [super init];
    if (self){
        NSMutableArray *temp = [NSMutableArray new];
        [temp addObject:[[PhotoObject alloc] initWithName:@"Fountain"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"HotChocolate"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"Ikea"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"Matrix"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"Meme"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"Mountains"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"MrMeseeks"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"PokemonGo"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"Wallpaper"]];
        [temp addObject:[[PhotoObject alloc] initWithName:@"YikYak"]];
        _photos = [temp copy];
    }
    return self;
}



@end
