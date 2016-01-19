//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Narendra Thapa on 2016-01-18.
//  Copyright © 2016 Narendra Thapa. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"

@interface GameModel ()



@end


@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _enteredNumbers = [[NSMutableArray alloc] init];
        _modelCounter = 0;
        _playerOne = [[Player alloc] init];
        _playerTwo = [[Player alloc] init];
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

-(void)randomOperationSelection{
    
}

-(void)randomNumbersAndTheirSum {
        
    self.firstNumber = arc4random_uniform(20);
    self.secondNumber = arc4random_uniform(20);
    self.randomNumbersSum = self.firstNumber + self.secondNumber;
    
    self.playerAnswer = [self.arrayToString intValue];
    
    if (self.randomNumbersSum == self.playerAnswer) {
        self.comparisonStatus = 0;
        self.modalComparisonStatusText = @"Congratulations!! You got it right";
    } else if (self.randomNumbersSum > self.playerAnswer) {
        self.comparisonStatus = 1;
        self.modalComparisonStatusText = @"Random Sum is greater";
        if ((self.modelCounter % 2) == 0) {
            [self.playerOne playerLostALife];
        } else {
            [self.playerTwo playerLostALife];
        }
    } else if (self.randomNumbersSum < self.playerAnswer) {
        self.comparisonStatus = -1;
        self.modalComparisonStatusText = @"Random Sum is Smaller";
        if ((self.modelCounter % 2) == 0) {
            [self.playerOne playerLostALife];
        } else {
            [self.playerTwo playerLostALife];
        }
    }
}

@end
