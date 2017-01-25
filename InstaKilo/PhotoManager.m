//
//  PhotoManager.m
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "PhotoManager.h"
#import "SubjectSorter.h"

@implementation PhotoManager

-(instancetype)init{
    self = [super init];
    if (self){
        NSMutableArray *temp = [NSMutableArray new];
        _subjects = [SubjectSorter new];
        [self.subjects createPhotos];
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
        _photos = [temp copy];
    }
    return self;
}


//-(void)createPhotos{
//    for(PhotoObject *photo in self.photoCategories){
//        switch (self.segment) {
//            case 0:{
//                 [self.photoCategoriesDict setObject:photo forKey:photo.subject];
//            }
//                break;
//            case 1:{
//                 [self.photoCategoriesDict setObject:photo forKey:photo.location];
//            }
//            default:
//                break;
//        }
//    }
//}





@end
