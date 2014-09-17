//
//  SCGamePlayScene.m
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/13/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import "SCGamePlayScene.h"
#import "SCMachineNode.h"
#import "SCSpaceCatNode.h"
#import "SCProjectileNode.h"
#import "SCSpaceDogNode.h"

@implementation SCGamePlayScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        SKSpriteNode *backgroundImage = [SKSpriteNode spriteNodeWithImageNamed:@"background_1"];
        backgroundImage.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:backgroundImage];
        
        SCMachineNode *machineNode = [SCMachineNode machineAtPosition:CGPointMake(CGRectGetMidX(self.frame), 12)];
        [self addChild:machineNode];
        
        SCSpaceCatNode *spaceCat = [SCSpaceCatNode catAtPosition:CGPointMake(machineNode.position.x, machineNode.position.y - 2)];
        [self addChild:spaceCat];
        
        [self addSpaceDog];
    }
    return self;
}

//-(void)update:(NSTimeInterval)currentTime{
//    
//    NSLog(@"%f", fmod(currentTime, 60));
//}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for (UITouch *touch in touches) {
        
        CGPoint location = [touch locationInNode:self];
        [self shootProjectileTowardsPosition:location];
    }
}

-(void)shootProjectileTowardsPosition:(CGPoint)location{
    SCSpaceCatNode *spaceCat = (SCSpaceCatNode *)[self childNodeWithName:@"SpaceCat"];
    [spaceCat performTap];
    
    SCMachineNode *machine = (SCMachineNode *)[self childNodeWithName:@"Machine"];
    
    SCProjectileNode *projectile = [SCProjectileNode projectileAtPosition:
                                    CGPointMake(machine.position.x, machine.position.y + machine.frame.size.height - 15)];
    
    [self addChild:projectile];
    
    [projectile moveTowardsAPosition:location];
}

-(void)addSpaceDog{
    SCSpaceDogNode *spaceDogA = [SCSpaceDogNode spaceDogOfType:SpaceDogTypeA];
    spaceDogA.position = CGPointMake(100, 300);
    [self addChild:spaceDogA];
    
    SCSpaceDogNode *spaceDogB = [SCSpaceDogNode spaceDogOfType:SpaceDogTypeB];
    spaceDogB.position = CGPointMake(200, 300);
    [self addChild:spaceDogB];
}

@end
