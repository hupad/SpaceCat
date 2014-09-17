//
//  SCProjectileNode.h
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/14/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SCProjectileNode : SKSpriteNode

+(instancetype)projectileAtPosition:(CGPoint)position;
-(void)moveTowardsAPosition:(CGPoint)position;

@end
