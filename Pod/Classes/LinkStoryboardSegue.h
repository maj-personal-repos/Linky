//
//  LinkStoryboardSegue.h
//  Linky
//
//  Created by Miguel Alonso Jr on 2/20/15.
//  Copyright (c) 2015 Miguel Alonso, Jr.. All rights reserved.

#import <UIKit/UIKit.h>

@interface LinkStoryboardSegue : UIStoryboardSegue

- (UIViewController *)findSceneNamed:(NSString *)identifier;

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination;

- (void) perform;

@end