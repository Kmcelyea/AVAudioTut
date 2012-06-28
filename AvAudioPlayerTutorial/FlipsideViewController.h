//
//  FlipsideViewController.h
//  AvAudioPlayerTutorial
//
//  Created by Kyle McElyea on 10/3/11.
//  Copyright 2011 OmNomRobot. You are free to use this code as you see fit and it is an as is product we are not liable for any of the outcomes as a result of using this code. This code is subject to being outdated as new SDK's are released. The frameworks required are iads for the banner on the information screen and the avfoundation framework
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (nonatomic, assign) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
