//
//  SCSpaceCatNode.m
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/13/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import "SCSpaceCatNode.h"


@interface SCSpaceCatNode ()

@property (nonatomic)SKAction *tapAction;

@end

@implementation SCSpaceCatNode

+(instancetype)catAtPosition:(CGPoint)position{
    
    SCSpaceCatNode *spaceCat = [self spriteNodeWithImageNamed:@"spacecat_1"];
    spaceCat.position = position;
    spaceCat.anchorPoint = CGPointMake(0.5, 0);
    spaceCat.name = @"SpaceCat";
    
    return spaceCat;
}

-(SKAction *)tapAction{
    if (_tapAction != nil) {
        return _tapAction;
    }

    NSArray *textures = @[
                          [SKTexture textureWithImageNamed:@"spacecat_2"],
                          [SKTexture textureWithImageNamed:@"spacecat_1"]
                          ];
    _tapAction = [SKAction animateWithTextures:textures timePerFrame:0.25];
    
    return _tapAction;
}

-(void)performTap{
    [self runAction:self.tapAction];
}

@end
