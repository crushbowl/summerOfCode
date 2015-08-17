//
//  Shape.m
//  probSet2-Aug9
//
//  Created by joy on 8/9/15.
//  Copyright (c) 2015 LatestNewThang. All rights reserved.
//


#import "Shape.h"

@implementation Shape

+(double)areaForShape:(Shape *)shape
    {
        return shape.width * shape.height;
    }

-(double)area
    {
        return self.width * self.height;
    }

@end
