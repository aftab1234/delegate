//
//  Programming_DemoViewController.m
//  delegate
//
//  Created by Sam on 11/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "Programming_DemoViewController.h"

@interface Programming_DemoViewController ()

@end


@implementation Programming_DemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
@synthesize delegate;
- (id)initWithFrame:(CGRect)frame {
if ((self = [super initWithFrame:frame])) {
[self setBackgroundColor:[UIColor blackColor]];
boxView = [[UIView alloc]
            initWithFrame:CGRectMake(50, 30, 220, 220)];
                                         [boxView setBackgroundColor:[UIColor redColor]];
                                         [self addSubview:boxView];
                                     }
                                     return self;
                                 }

                                 
                                 - (void)animate {
                                     [UIView beginAnimations:nil context:NULL];
                                     [UIView setAnimationDuration:2];
                                     [UIView setAnimationDelegate:self];
                                     [UIView setAnimationWillStartSelector:@selector(animationStarted)];
                                     [UIView setAnimationDidStopSelector:@selector(animationStopped)];
                                     CGRect newFrame = CGRectMake(boxView.frame.origin.x,
                                                                  [boxView setFrame:newFrame];
                                                                  [UIView commitAnimations];
                                                                  }
                                                                  
                                                                  - (void)animationStarted {
                                                                      if ([delegate
                                                                           respondsToSelector:@selector(animationStartedWithView:)])
                                                                      {
                                                                          [delegate animationStartedWithView:self];
                                                                      }
                                                                  }
                                                                  - (void)animationStopped {
                                                                      if ([delegate
                                                                           respondsToSelector:@selector(animationHasFinishedWithView:)])
                                                                      {
                                                                          [delegate animationHasFinishedWithView:self];
                                                                      }
                                                                  }
                                                                  - (void)dealloc {
                                                                      [boxView release];
                                                                      [super dealloc];
                                                                  }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//@synthesize delegate;
//- (id)initWithFrame:(CGRect)frame {
//    if ((self = [super initWithFrame:frame])) {
//        [self setBackgroundColor:[UIColor blackColor]];
//        boxView = [[UIView alloc]
//                   initWithFrame:CGRectMake(50, 30, 220, 220)];
//        [boxView setBackgroundColor:[UIColor redColor]];
//        [self addSubview:boxView];
//    }
//    return self;
//}


@end
