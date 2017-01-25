//
//  CollectionReusableView.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoManager.h"
#import "PhotoObject.h"

@interface CollectionReusableView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *label;
-(void)setUpSections:(Album *)album;

@end
