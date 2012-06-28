//
//  MainViewController.h
//  AvAudioPlayerTutorial
//
//  Created by Kyle McElyea on 10/3/11.
//  Copyright 2011 OmNomRobot. You are free to use this code as you see fit and it is an as is product we are not liable for any of the outcomes as a result of using this code. This code is subject to being outdated as new SDK's are released. The frameworks required are iads for the banner on the information screen and the avfoundation framework
//

#import <AVFoundation/AVAudioPlayer.h>
#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, AVAudioPlayerDelegate> {
    AVAudioPlayer *theAudio;
    IBOutlet UIButton *audiobutton;

}

@property (nonatomic, retain) AVAudioPlayer *theAudio;


- (IBAction)audioAction:(id)sender;
- (IBAction)showInfo:(id)sender;

@end
