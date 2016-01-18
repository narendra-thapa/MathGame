//
//  Player.h
//  TwoPlayerMath
//
//  Created by Narendra Thapa on 2016-01-18.
//  Copyright © 2016 Narendra Thapa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSMutableArray *enteredNumbers;
@property (nonatomic) NSMutableString *arrayToString;

@property (nonatomic) NSUInteger firstNumber;
@property (nonatomic) NSUInteger secondNumber;
@property (nonatomic) NSUInteger randomNumbersSum;
@property (nonatomic) NSUInteger playerAnswer;
@property (nonatomic) NSInteger comparisonStatus;

@property (nonatomic) NSUInteger playerOneLife;
@property (nonatomic) NSUInteger playerTwoLife;

-(void)displayNumbersArray;

-(void)randomNumbersAndTheirSum;

@end
