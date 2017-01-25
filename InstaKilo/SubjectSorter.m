//
//  SubjectSorter.m
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "SubjectSorter.h"
#import "Album.h"
#import "PhotoObject.h"

@implementation SubjectSorter

-(NSArray *)createPhotos{
    NSMutableArray *albums = [NSMutableArray new];
    NSMutableArray *temp = [NSMutableArray new];
    
    [temp addObject:[[PhotoObject alloc] initWithName:@"Fountain" subject:@"Nature" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"HotChocolate" subject:@"Food" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Ikea" subject:@"Store" location:@"Toronto"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Matrix" subject:@"School" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Meme" subject:@"Meme" location:@"Internet"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Mountains" subject:@"Nature" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"MrMeseeks" subject:@"TV" location:@"Internet"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"PokemonGo" subject:@"Phone" location:@"Vancouver"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"Wallpaper" subject:@"Phone" location:@"Internet"]];
    [temp addObject:[[PhotoObject alloc] initWithName:@"YikYak" subject:@"Phone" location:@"Internet"]];
    Album *album = [[Album alloc] initWithName:@"Nature"];
    [album.photoCollection addObject:temp[0]];
    [albums addObject:album];
    bool added = YES;
    
    for(PhotoObject *photo in temp){
        for(Album *album in albums){
            if ([album.identifier isEqualToString:photo.subject]){
                [album.photoCollection addObject:photo];
                added = YES;
            }
        }
        if(!added){
            Album *album = [[Album alloc] initWithName:photo.subject];
            [album.photoCollection addObject:photo];
            [albums addObject:album];
           
        }
        added = NO;
        
    }
    self.albums = [albums copy];
    return [albums copy];
}

@end
