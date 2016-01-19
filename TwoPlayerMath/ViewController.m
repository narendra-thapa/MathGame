//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Narendra Thapa on 2016-01-18.
//  Copyright © 2016 Narendra Thapa. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()

//@property (nonatomic, strong) Player *playerOne;
//@property (nonatomic, strong) Player *playerTwo;
@property (nonatomic, strong) GameModel *model;
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
    
    self.model = [[GameModel alloc] init];
    
    //self.playerOne  = [[Player alloc] init];
    self.playerOneLife.text = [NSString stringWithFormat:@"Player 1 Life: %lu", (unsigned long)self.model.playerOne.playerLife];
    
    
    //self.playerTwo  = [[Player alloc] init];
    self.playerTwoLife.text = [NSString stringWithFormat:@"Player 2 Life: %lu", (unsigned long)self.model.playerTwo.playerLife];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pressedEnter:(UIButton *)sender {
    //Calculate random sum/ compare with players sum/ display result
    //self.yourAnswer.text = @"Good Job";
    self.model.modelCounter++;
    
    if ((self.model.playerOne.playerLife > 0) && (self.model.playerTwo.playerLife > 0)) {
    [self.model randomNumbersAndTheirSum];
    self.whoIsPlaying.text = [NSString stringWithFormat:@"Question: X + Y?"];
        
        
    self.randomNumbers.text = [NSString stringWithFormat:@"%lu + %lu = %lu", (unsigned long)self.model.firstNumber, (unsigned long)self.model.secondNumber, (unsigned long)self.model.randomNumbersSum];
    
    
    self.comparisonStatus.text = self.model.modalComparisonStatusText;
        
    self.playerOneLife.text = [NSString stringWithFormat:@"Player 1 Life: %lu", (unsigned long)self.model.playerOne.playerLife];
    self.playerTwoLife.text = [NSString stringWithFormat:@"Player 2 Life: %lu", (unsigned long)self.model.playerTwo.playerLife];
        
    [self.model.enteredNumbers removeAllObjects];
        self.counter++;
    }
     else
     {
        // call reset method and print
        self.comparisonStatus.text = @"";
        self.whoIsPlaying.text = @"Two Players";
        self.randomNumbers.text = @"Thanks for playing";
        self.yourAnswer.text = @"You guys win nothing";
    }
    
}


- (IBAction)pressedOne:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"1"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedTwo:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"2"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedThree:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"3"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedFour:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"4"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedFive:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"5"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedSix:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"6"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedSeven:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"7"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedEight:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"8"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedNine:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"9"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}
- (IBAction)pressedZero:(UIButton *)sender {
    [self.model.enteredNumbers addObject:@"0"];
    [self.model displayNumbersArray];
    self.yourAnswer.text = self.model.arrayToString;
}


@end
