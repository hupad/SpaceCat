//
//  SCSpaceDogNode.h
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/17/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

typedef NS_ENUM(NSUInteger, SpaceDogType) {
    SpaceDogTypeA,
    SpaceDogTypeB
};

@interface SCSpaceDogNode : SKSpriteNode

+(instancetype)spaceDogOfType:(SpaceDogType)type;

@end
