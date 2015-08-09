

```objective-c

//  WordsInString.h
//  probSet2-Aug9

#import <Foundation/Foundation.h>

@interface WordsInString : NSObject

+(NSUInteger)numberOfWordsInString:(NSString * )string;

+(NSUInteger)numberOfVowelsInString:(NSString * )string;


@end

//
//  WordsInString.m
//  probSet2-Aug9


#import "WordsInString.h"

@implementation WordsInString

+(NSUInteger)numberOfWordsInString:(NSString*)string

{
       NSArray *components = [string componentsSeparatedByString:@" "];
    
    return components.count;
}


+(NSUInteger)numberOfVowelsInString:(NSString*)string;  {
    
    // Create an array of vowels.
    NSArray *vowels = @[@"A", @"E", @"I", @"O", @"U", @"Y", @"a", @"e", @"i", @"o", @"u", @"y"];
    
    
    // Create a mutable, empty array to hold the characters - a separate container for the vowels.
    NSMutableArray *characterArray = [NSMutableArray array];
    
    //Loop or iterate through the original string (array of vowels)
    for (int i = 0; i < string.length; i++) {
        [characterArray addObject:[NSString stringWithFormat:@"%c", [string characterAtIndex:i]]];
        
    }
    
    // Define a "counter" variable
    int sum = 0;
        
    
    // Create a "nested loop". The entire inner loop will execute *for each iteration* of the outer loop.
    
    // For each character (string) in our character array...
    for (NSString *character in characterArray) {
        
        // For each vowel in our vowel array...
        for (NSString *vowel in vowels) {
            
            // Compare the current character to the current vowel
            if ([vowel isEqualToString:character]) {
                
                // If we've found a vowel, increment our counter.
                sum++;
                
                // We exit the *inner* loop, and continue to the next iteration of the *outer* loop (in other words, the next letter in 'string'.)
                break;
            }
        }
    }
    // Once we reach here, we've looped through the entire array of characters and counted the vowels. Return our count to the caller.
    return sum;
    
    
}

@end



```
