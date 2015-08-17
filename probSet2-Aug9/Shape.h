//
//  Shape.h
//  probSet2-Aug9
//
//  Created by joy on 8/9/15.
//  Copyright (c) 2015 LatestNewThang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property (nonatomic, assign) double width;
@property (nonatomic, assign) double height;


+(double)areaForShape:(Shape*)shape;

// Below is an optional instance method

-(double)area;

@end
