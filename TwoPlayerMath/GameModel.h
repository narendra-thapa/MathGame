//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Narendra Thapa on 2016-01-18.
//  Copyright © 2016 Narendra Thapa. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GameModel : NSObject

@property (nonatomic) NSUInteger modelCounter;

@property (nonatomic) NSString *modalComparisonStatusText;
@property (nonatomic) NSInteger comparisonStatus;
@property (nonatomic) NSMutableArray *enteredNumbers;
@property (nonatomic) NSMutableString *arrayToString;

@property (nonatomic) NSUInteger firstNumber;
@property (nonatomic) NSUInteger secondNumber;
@property (nonatomic) NSUInteger randomNumbersSum;
@property (nonatomic) NSUInteger playerAnswer;


@property (nonatomic, strong) Player *playerOne;
@property (nonatomic, strong) Player *playerTwo;

-(void)displayNumbersArray;
-(void)randomNumbersAndTheirSum;

-(void)randomOperationSelection;


@end
