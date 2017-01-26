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
#import "CollectionViewCell.h"
#import "CollectionReusableView.h"
#import "Album.h"

@implementation LocationSorter

-(instancetype)initWithPhotosArray:(NSArray <PhotoObject*>*)photos{
    self = [super init];
    if(self){
        _data = photos;
        [self createPhotos];
    }
    return self;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewCell *cell = (CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    Album *album = self.albums[indexPath.section];
    PhotoObject *photoObject = album.photoCollection[indexPath.item];
    cell.photoObject = photoObject;
    // Configure the cell
    
    return cell;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.albums.count;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    Album *album = self.albums[section];
    return album.photoCollection.count;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    CollectionReusableView *view = (CollectionReusableView *)[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                                                                                                withReuseIdentifier:@"Cell"
                                                                                                       forIndexPath:indexPath];
    Album *album = self.albums[indexPath.section];
    [view setUpSections:album];
    return view;
    
}


-(NSArray *)createPhotos{
    NSMutableArray *albums = [NSMutableArray new];
    Album *album = [[Album alloc] initWithName:@"Vancouver"];
    [album.photoCollection addObject:self.data[0]];
    [albums addObject:album];
    bool added = YES;
    
    for(PhotoObject *photo in self.data){
        for(Album *album in albums){
            if ([album.identifier isEqualToString:photo.location]){
                [album.photoCollection addObject:photo];
                added = YES;
            }
        }
        if(!added){
            Album *album = [[Album alloc] initWithName:photo.location];
            [album.photoCollection addObject:photo];
            [albums addObject:album];
            
        }
        added = NO;
        
    }
    self.albums = [albums copy];
    return [albums copy];
}
@end
