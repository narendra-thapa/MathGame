//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Narendra Thapa on 2016-01-18.
//  Copyright © 2016 Narendra Thapa. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"


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


-(void)generateRandomNumbers {
    self.firstNumber = arc4random_uniform(20);
    self.secondNumber = arc4random_uniform(20);
    self.randomOperationSelection = arc4random_uniform(3);
    
    if (self.randomOperationSelection == 0) {
        self.randomNumbersSum = self.firstNumber + self.secondNumber;
    }
    else if (self.randomOperationSelection == 1) {
        if (self.firstNumber < self.secondNumber) {
            NSUInteger temp = self.firstNumber;
            self.firstNumber = self.secondNumber;
            self.secondNumber = temp;
        }
        self.randomNumbersDifference = self.firstNumber - self.secondNumber;
    } else if (self.randomOperationSelection == 2) {
        self.randomNumbersProduct = self.firstNumber * self.secondNumber;
    }
}

-(void)randomNumbersSumComparison {
    
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
        self.modalComparisonStatusText = @"Random Sum is smaller";
        if ((self.modelCounter % 2) == 0) {
            [self.playerOne playerLostALife];
        } else {
            [self.playerTwo playerLostALife];
        }
    }
}

-(void)randomNumbersProductComparison {
    
    self.playerAnswer = [self.arrayToString intValue];
    
    if (self.randomNumbersProduct == self.playerAnswer) {
        self.comparisonStatus = 0;
        self.modalComparisonStatusText = @"Congratulations!! You got it right";
    } else if (self.randomNumbersProduct > self.playerAnswer) {
        self.comparisonStatus = 1;
        self.modalComparisonStatusText = @"Random Product is greater";
        if ((self.modelCounter % 2) == 0) {
            [self.playerOne playerLostALife];
        } else {
            [self.playerTwo playerLostALife];
        }
    } else if (self.randomNumbersProduct < self.playerAnswer) {
        self.comparisonStatus = -1;
        self.modalComparisonStatusText = @"Random Product is smaller";
        if ((self.modelCounter % 2) == 0) {
            [self.playerOne playerLostALife];
        } else {
            [self.playerTwo playerLostALife];
        }
    }
}

-(void)randomNumbersDifferenceComparison {
    
    self.playerAnswer = [self.arrayToString intValue];
    
    if (self.randomNumbersDifference == self.playerAnswer) {
        self.comparisonStatus = 0;
        self.modalComparisonStatusText = @"Congratulations!! You got it right";
    } else if (self.randomNumbersDifference > self.playerAnswer) {
        self.comparisonStatus = 1;
        self.modalComparisonStatusText = @"Random Difference is greater";
        if ((self.modelCounter % 2) == 0) {
            [self.playerOne playerLostALife];
        } else {
            [self.playerTwo playerLostALife];
        }
    } else if (self.randomNumbersDifference < self.playerAnswer) {
        self.comparisonStatus = -1;
        self.modalComparisonStatusText = @"Random Difference is smaller";
        if ((self.modelCounter % 2) == 0) {
            [self.playerOne playerLostALife];
        } else {
            [self.playerTwo playerLostALife];
        }
    }
}

@end
