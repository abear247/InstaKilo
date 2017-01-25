//
//  Album.h
//  InstaKilo
//
//  Created by Alex Bearinger on 2017-01-25.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject
@property NSMutableArray *photoCollection;
@property NSString *identifier;
-(instancetype)initWithName:(NSString *)name;

@end
