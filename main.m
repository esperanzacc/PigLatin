//
//  main.m
//  PigLatin
//
//  Created by Esperanza on 2022-05-18.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"
#import "InputCollector.h"

// input str ->sperate by any punctuation and " "
// check each word first one-two char as the same any one of vlusters
// if yes -> call function (move those two char to the end and + ay); if no -> call function and move first char to the end+ay

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSString *userInput = [[[InputCollector alloc]init] inputForPrompt:@"Type Anything"];
    NSLog(@"%@", [userInput pluralize:userInput]);
  
  }
  return 0;
}
