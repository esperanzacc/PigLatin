//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Esperanza on 2022-05-18.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)


- (NSString *)pluralize: (NSString *) userInput {
  
  NSArray *wordsAndEmptyStrings = [userInput componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
  NSLog(@"%@",wordsAndEmptyStrings);
  
  NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
  NSString *result = @"";
  NSMutableArray *resultArr = [NSMutableArray new];
  
  for (NSString* word in wordsAndEmptyStrings) {
    NSRange checkRange = NSMakeRange(0, 2);
    NSString *string = @"";
    string = [word substringWithRange:checkRange];
//    NSLog(@"%@", word);
    
    if ([clusters containsObject:string]) {
      result = [NSString stringWithFormat:@"%@%@%@ay",[[word substringWithRange:NSMakeRange(2,1)]uppercaseString], [word substringWithRange:NSMakeRange(3, [word length] - 3)], [string lowercaseString]];
      [resultArr addObject:result];
    } else {
      result = [NSString stringWithFormat:@"%@%@%@ay",[[word substringWithRange:NSMakeRange(1,1)]uppercaseString], [word substringWithRange:NSMakeRange(2, ([word length] - 2))], [[word substringWithRange:NSMakeRange(0, 1)]lowercaseString]];
      [resultArr addObject:result];
    }
    
  }
  return [resultArr componentsJoinedByString:@","];
}

@end
