//
//  SCSpaceDogNode.m
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/17/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import "SCSpaceDogNode.h"

@implementation SCSpaceDogNode

+(instancetype)spaceDogOfType:(SpaceDogType)type{
    SCSpaceDogNode *dogNode;
    NSArray *textures;
    
    if (type == SpaceDogTypeA) {
        dogNode = [self spriteNodeWithImageNamed:@"spacedog_A_1"];
        textures = @[ [SKTexture textureWithImageNamed:@"spacedog_A_1"],
                      [SKTexture textureWithImageNamed:@"spacedog_A_2"],
                      [SKTexture textureWithImageNamed:@"spacedog_A_3"]
                      ];
    }else{
       dogNode = [self spriteNodeWithImageNamed:@"spacedog_B_1"];
        textures = @[ [SKTexture textureWithImageNamed:@"spacedog_B_1"],
                      [SKTexture textureWithImageNamed:@"spacedog_B_2"],
                      [SKTexture textureWithImageNamed:@"spacedog_B_3"],
                    [SKTexture textureWithImageNamed:@"spacedog_B_4"]
                      ];
    }
    SKAction *animateWithTextures = [SKAction animateWithTextures:textures timePerFrame:0.1];
    [dogNode runAction:[SKAction repeatActionForever:animateWithTextures]];
    return dogNode;
}

@end
