//
//  iUmpireAppDelegate.h
//  iUmpire
//
//  Created by Matt Bishop on 11/5/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iUmpireViewController;

@interface iUmpireAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iUmpireViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iUmpireViewController *viewController;

@end

