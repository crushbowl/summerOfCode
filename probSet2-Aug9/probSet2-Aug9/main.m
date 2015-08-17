//
//  main.m
//  probSet2-Aug9
//
//  Created by joy on 8/8/15.
//  Copyright (c) 2015 LatestNewThang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WordsInString.h"
#import "Shape.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *multiWordString = @"My dog is brown";
        NSUInteger wordCount = [WordsInString numberOfWordsInString:multiWordString];
        NSLog(@"'%@' has %lu words", multiWordString, (unsigned long)wordCount);
        
        NSString *stringWithVowels = @"Blue is my favorite color";
        NSUInteger vowelCount = [WordsInString numberOfVowelsInString:stringWithVowels];
        NSLog(@"'%@' has %lu vowels", stringWithVowels, (unsigned long)vowelCount);
        
        Shape *myShape = [[Shape alloc] init];
        myShape.height = 15.0;
        myShape.width = 10.0;
        double area = [Shape areaForShape:myShape];
        
        NSLog(@"Calculated area for height: %.2f and width: %.2f is %f", myShape.height, myShape.width, area);
        
        // Alternatively, using the instance method:
        // NSLog(@"Calculated area for height: %.2f and width: %.2f is %f", myShape.height, myShape.width, [myShape area]);
    }
    return 0;
}