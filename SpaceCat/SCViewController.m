//
//  SCViewController.m
//  SpaceCat
//
//  Created by Harish Upadhyayula on 9/12/14.
//  Copyright (c) 2014 Harish Upadhyayula. All rights reserved.
//

#import "SCViewController.h"
#import "SCTitleScene.h"

@implementation SCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewDidLayoutSubviews{
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SCTitleScene * scene = [SCTitleScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
