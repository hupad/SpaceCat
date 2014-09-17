//
//  SCSpaceCatNode.h
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/13/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SCSpaceCatNode : SKSpriteNode

+(instancetype)catAtPosition:(CGPoint)position;

-(void)performTap;

@end
