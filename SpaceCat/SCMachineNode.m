//
//  SCMachineNode.m
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/13/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import "SCMachineNode.h"

@implementation SCMachineNode

+(instancetype)machineAtPosition:(CGPoint)position{
    
    SCMachineNode *machine = [self spriteNodeWithImageNamed:@"machine_1"];
    machine.position = position;
    machine.anchorPoint = CGPointMake(0.5, 0);
    machine.name = @"Machine";
    
    NSArray *textures = @[
                          [SKTexture textureWithImageNamed:@"machine_1"],
                          [SKTexture textureWithImageNamed:@"machine_2"]
                          ];
    SKAction *machineAnimation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    SKAction *machineRepeat = [SKAction repeatActionForever:machineAnimation];
    
    [machine runAction:machineRepeat];
    return machine;
}

@end
