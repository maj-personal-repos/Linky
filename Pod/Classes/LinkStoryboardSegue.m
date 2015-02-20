//
//  LinkStoryboardSegue.m
//  Linky
//
//  Created by Miguel Alonso Jr on 2/20/15.
//  Copyright (c) 2015 Miguel Alonso, Jr.. All rights reserved.

#import "LinkStoryboardSegue.h"

// TODO: Add unit tests

@implementation LinkStoryboardSegue

- (UIViewController *)findSceneNamed:(NSString *)identifier{
    
    NSArray *info = [identifier componentsSeparatedByString:@"@"];
    
    NSString *storyboard_name = info[1];
    NSString *scene_name = info[0];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboard_name bundle:nil];
    UIViewController *scene = nil;
    
    if (scene_name.length == 0) {
        scene = [storyboard instantiateInitialViewController];
    }
    else {
        scene = [storyboard instantiateViewControllerWithIdentifier:scene_name];
    }
    
    return scene;
}
- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination{
    
    return [super initWithIdentifier:identifier source:source destination:[self findSceneNamed:identifier]];
}
- (void) perform{
    
    UIViewController *source = (UIViewController *)self.sourceViewController;
    UIViewController *destination = (UIViewController *)self.destinationViewController;
    if(source.navigationController == nil) {
        [source presentViewController:destination animated:YES completion:nil];
    }
    else {
        [source.navigationController pushViewController:destination animated:YES];
    }
}

@end