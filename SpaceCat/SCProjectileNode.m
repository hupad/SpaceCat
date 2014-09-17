//
//  SCProjectileNode.m
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/14/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import "SCProjectileNode.h"

@implementation SCProjectileNode

+(instancetype)projectileAtPosition:(CGPoint)position{
    SCProjectileNode *projectile = [self spriteNodeWithImageNamed:@"projectile_1"];
    projectile.position = position;
    projectile.name = @"projectile";
    
    [projectile setUpAnimations];
    
    return projectile;
}

-(void)setUpAnimations{
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"projectile_1"],
                          [SKTexture textureWithImageNamed:@"projectile_2"],
                          [SKTexture textureWithImageNamed:@"projectile_3"]];
    
    SKAction *animation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    SKAction *repeatAction = [SKAction repeatActionForever:animation];
    
    [self runAction:repeatAction];
}

-(void)moveTowardsAPosition:(CGPoint)position{
    
    float slope = (position.y - self.position.y) / (position.x - self.position.x);
    
    float offscreenX;
    
    if (position.x < self.position.x) {
        offscreenX = -10;
    }else{
        offscreenX = self.parent.frame.size.width + 10;
    }
    
    float offscreenY = slope * offscreenX - slope * self.position.x + self.position.y;
    
    CGPoint pointOffScreen = CGPointMake(offscreenX, offscreenY);
    
    float distanceA = pointOffScreen.y - self.position.y;
    float distanceB = pointOffScreen.x - self.position.x;
    
    float distanceC = sqrtf(powf(distanceA, 2) + powf(distanceB, 2));
    
    float time = distanceC / 400;
    float waitToFade = time * 0.75;
    float fadeTime = time - waitToFade;
    
    SKAction *moveProjectile = [SKAction moveTo:pointOffScreen duration:time];
    [self runAction:moveProjectile];
    
    NSArray *animationSequence = @[[SKAction waitForDuration:waitToFade],
                                   [SKAction fadeOutWithDuration:fadeTime],
                                   [SKAction removeFromParent]];
    
    [self runAction:[SKAction sequence:animationSequence]];
}

@end
