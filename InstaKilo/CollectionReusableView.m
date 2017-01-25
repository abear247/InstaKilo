//
//  CollectionReusableView.m
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "CollectionReusableView.h"

@implementation CollectionReusableView

-(void)setUpSections:(Album *)album{
    self.label.text = album.identifier;
}

@end
