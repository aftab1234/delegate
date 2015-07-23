//
//  Programming_DemoAppDelegate.h
//  delegate
//
//  Created by Sam on 11/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Programming_DemoAppDelegate : NSObject

<UIApplicationDelegate, animationNotification> {
    UIWindow *window;
    Programming_DemoViewController *view;
}
@property (nonatomic, retain) IBOutlet UIWindow *window;
- (void)animate;

//@property (strong, nonatomic) UIWindow *window;

@end
