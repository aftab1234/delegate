//
//  Programming_DemoViewController.h
//  delegate
//
//  Created by Sam on 11/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

//@interface Progra : UIViewController
//
//@end

@protocol animationNotification
- (void)animationHasFinishedWithView:(UIView *)animatedView;
@optional
- (void)animationStartedWithView:(UIView *)animatedView;
@end
@interface Programming_DemoViewController : UIViewController{
    id <animationNotification> delegate;
    UIView *boxView;
}

//@end
//@interface myView : UIView {
//    id <animationNotification> delegate;
//    UIView *boxView;
//}
@property (nonatomic, assign) id delegate;
- (void)animate;
@end
