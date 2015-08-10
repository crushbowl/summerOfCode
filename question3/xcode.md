```objective-c

// Shape.h file
#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property (nonatomic, assign) double width;
@property (nonatomic, assign) double height;


+(double)areaForShape:(Shape*)shape;

// Below is an optional instance method

-(double)area;

@end

// Shape.m

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

// main.m

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



```
