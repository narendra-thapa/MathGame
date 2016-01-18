//
//  Player.m
//  TwoPlayerMath
//
//  Created by Narendra Thapa on 2016-01-18.
//  Copyright © 2016 Narendra Thapa. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _enteredNumbers = [[NSMutableArray alloc] init];
        
        _playerOneLife = 3;
        _playerTwoLife = 3;

    }
    return self;
}

-(void)displayNumbersArray {
    NSInteger lengthOfArray = [self.enteredNumbers count];
    self.arrayToString = [[NSMutableString alloc] init];
    for (int i =0; i < lengthOfArray; i++) {
        [self.arrayToString appendString:[self.enteredNumbers objectAtIndex:i]];
    }
}

-(void)randomNumbersAndTheirSum {
    self.firstNumber = arc4random_uniform(20);
    self.secondNumber = arc4random_uniform(20);
    self.randomNumbersSum = self.firstNumber + self.secondNumber;
    
    self.playerAnswer = [self.arrayToString intValue];
    
    if (self.randomNumbersSum == self.playerAnswer) {
        self.comparisonStatus = 0;
    } else if (self.randomNumbersSum > self.playerAnswer) {
        self.comparisonStatus = 1;
    } else if (self.randomNumbersSum < self.playerAnswer) {
        self.comparisonStatus = -1;
    }
}

@end
