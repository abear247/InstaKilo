//
//  LocationSorter.m
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "LocationSorter.h"
#import "PhotoManager.h"
#import "PhotoObject.h"

@implementation LocationSorter

-(NSArray *)createPhotos{
    NSMutableArray *temp = [NSMutableArray new];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Fountain" subject:@"Nature" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"HotChocolate" subject:@"Food" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Ikea" subject:@"Store" location:@"Toronto"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Matrix" subject:@"School" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Meme" subject:@"Meme" location:@"Internet"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Mountains" subject:@"Nature" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"MrMeSeeks" subject:@"TV" location:@"Internet"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"PokemonGo" subject:@"Phone" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Wallpaper" subject:@"Phone" location:@"Internet"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"YikYak" subject:@"Phone" location:@"Internet"]];
    return [NSArray new];
}

@end
