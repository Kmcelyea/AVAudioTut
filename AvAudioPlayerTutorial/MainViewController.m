//
//  MainViewController.m
//  AvAudioPlayerTutorial
//
//  Created by Kyle McElyea on 10/3/11.
//  Copyright 2011 OmNomRobot. You are free to use this code as you see fit and it is an as is product we are not liable for any of the outcomes as a result of using this code. This code is subject to being outdated as new SDK's are released. The frameworks required are iads for the banner on the information screen and the avfoundation framework
//

#import "MainViewController.h"

@implementation MainViewController
@synthesize theAudio;


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}


- (IBAction)audioAction:(id)sender {
    
    if (theAudio.playing) {
        [theAudio stop];
        
    }
    
    else {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"audio" ofType:@"mp3"];
        theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
        theAudio.delegate = self;
        theAudio.numberOfLoops = 0; //-1 for repeat loop or any number <0 for that many loops
        [theAudio play];
        
    }
    
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
    controller.delegate = self;
    
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
    
    [controller release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload
{
    [theAudio stop];
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [theAudio release];
    [super dealloc];    
}

@end
