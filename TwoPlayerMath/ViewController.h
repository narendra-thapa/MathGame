//
//  ViewController.h
//  TwoPlayerMath
//
//  Created by Narendra Thapa on 2016-01-18.
//  Copyright © 2016 Narendra Thapa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *yourAnswer;
@property (weak, nonatomic) IBOutlet UILabel *randomNumbers;
@property (weak, nonatomic) IBOutlet UILabel *comparisonStatus;
@property (weak, nonatomic) IBOutlet UILabel *playerOneLife;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoLife;
@property (weak, nonatomic) IBOutlet UILabel *whoIsPlaying;

@end

