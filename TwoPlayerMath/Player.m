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
        _playerLife = 3;
    }
    return self;
}

-(void)playerLostALife {
    self.playerLife--;
}

@end
