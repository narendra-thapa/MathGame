//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Narendra Thapa on 2016-01-18.
//  Copyright © 2016 Narendra Thapa. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"

@interface ViewController ()

@property (nonatomic, strong) Player *playerOne;
@property (nonatomic, strong) Player *playerTwo;
@property (nonatomic) NSUInteger counter;

@end

@implementation ViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        _counter = 0;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.playerOne  = [[Player alloc] init];
    self.playerOneLife.text = [NSString stringWithFormat:@"Player 1 Life: %lu", (unsigned long)self.playerOne.playerOneLife];
    
    
    self.playerTwo  = [[Player alloc] init];
    self.playerTwoLife.text = [NSString stringWithFormat:@"Player 2 Life: %lu", (unsigned long)self.playerTwo.playerTwoLife];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pressedEnter:(UIButton *)sender {
    //Calculate random sum/ compare with players sum/ display result
    //self.yourAnswer.text = @"Good Job";
    
    if ((self.counter == 0) || (self.counter == 2) || (self.counter == 4)) {
    [self.playerOne randomNumbersAndTheirSum];
    self.whoIsPlaying.text = [NSString stringWithFormat:@"Player 1: X + Y?"];
    self.randomNumbers.text = [NSString stringWithFormat:@"%lu + %lu = %lu", (unsigned long)self.playerOne.firstNumber, (unsigned long)self.playerOne.secondNumber, (unsigned long)self.playerOne.randomNumbersSum];
    
    if (self.playerOne.comparisonStatus == 0) {
    self.comparisonStatus.text = @"Congratulations!! Numbers are equal";
    } else if (self.playerOne.comparisonStatus == 1) {
    self.comparisonStatus.text = @"Random Sum is greater";
        self.comparisonStatus.textColor = [UIColor redColor];
        self.playerOne.playerOneLife--;
    } else if (self.playerOne.comparisonStatus == -1) {
    self.comparisonStatus.text = @"Random Sum is Smaller";
        self.comparisonStatus.textColor = [UIColor redColor];
        self.playerOne.playerOneLife--;
    }
    
    self.playerOneLife.text = [NSString stringWithFormat:@"Player 1 Life: %lu", (unsigned long)self.playerOne.playerOneLife];
    self.playerTwoLife.text = [NSString stringWithFormat:@"Player 2 Life: %lu", (unsigned long)self.playerTwo.playerTwoLife];
        
    [self.playerOne.enteredNumbers removeAllObjects];
        self.counter++;
    }
    else if ((self.counter == 1) || (self.counter == 3) || (self.counter == 5))  {
        
    [self.playerTwo randomNumbersAndTheirSum];
    self.whoIsPlaying.text = [NSString stringWithFormat:@"Player 2: X + Y?"];
    self.randomNumbers.text = [NSString stringWithFormat:@"%lu + %lu = %lu", (unsigned long)self.playerTwo.firstNumber, (unsigned long)self.playerTwo.secondNumber, (unsigned long)self.playerTwo.randomNumbersSum];
    
    if (self.playerTwo.comparisonStatus == 0) {
        self.comparisonStatus.text = @"Congratulations!! Numbers are equal";
    } else if (self.playerTwo.comparisonStatus == 1) {
        self.comparisonStatus.text = @"Random Sum is greater";
        self.comparisonStatus.textColor = [UIColor redColor];
        self.playerTwo.playerTwoLife--;
    } else if (self.playerTwo.comparisonStatus == -1) {
        self.comparisonStatus.text = @"Random Sum is Smaller";
        self.comparisonStatus.textColor = [UIColor redColor];
        self.playerTwo.playerTwoLife--;
    }
    
    self.playerOneLife.text = [NSString stringWithFormat:@"Player 1 Life: %lu", (unsigned long)self.playerOne.playerOneLife];
    self.playerTwoLife.text = [NSString stringWithFormat:@"Player 2 Life: %lu", (unsigned long)self.playerTwo.playerTwoLife];
    
    [self.playerOne.enteredNumbers removeAllObjects];
        self.counter++;
    } else {
        // call reset method and print
        self.comparisonStatus.text = @"";
        self.whoIsPlaying.text = @"Two Players";
        self.randomNumbers.text = @"Thanks for playing";
        self.yourAnswer.text = @"You guys win nothing";
    }
    
}


- (IBAction)pressedOne:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"1"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedTwo:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"2"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedThree:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"3"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedFour:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"4"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedFive:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"5"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedSix:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"6"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedSeven:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"7"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedEight:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"8"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedNine:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"9"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}
- (IBAction)pressedZero:(UIButton *)sender {
    [self.playerOne.enteredNumbers addObject:@"0"];
    [self.playerOne displayNumbersArray];
    self.yourAnswer.text = self.playerOne.arrayToString;
}


@end
