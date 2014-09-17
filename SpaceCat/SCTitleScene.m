//
//  SCTitleScene.m
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/13/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import "SCTitleScene.h"
#import "SCGamePlayScene.h"

@implementation SCTitleScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        SKSpriteNode *backgroundImage = [SKSpriteNode spriteNodeWithImageNamed:@"splash_1"];
        backgroundImage.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:backgroundImage];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    SCGamePlayScene *gamePlay = [SCGamePlayScene sceneWithSize:self.frame.size];
    SKTransition *transition = [SKTransition fadeWithDuration:1.0];
    [self.view presentScene:gamePlay transition:transition];
}

@end
