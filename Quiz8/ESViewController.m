//
//  ESViewController.m
//  Quiz8
//
//  Created by Brandon on 4/13/14.
//  Copyright (c) 2014 Brandon Tauber. All rights reserved.
//

#import "ESViewController.h"
#import "ESView.h"

@interface ESViewController ()

@end

@implementation ESViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addHorizontal:(id)sender {
    NSLog(@"Adding Horizontal");
    /*
    UIRotationGestureRecognizer *s = sender;
	if (lastVelocity > 0 && s.velocity < 0) {
		[self.etchView saveCurrentPoint];
	}
	if (lastVelocity < 0 && s.velocity > 0) {
		[self.etchView saveCurrentPoint];
	}
	[self.etchView setCurrentHorizontalAngle:s.rotation];
	[self.etchView setCurrentVelocity:s.velocity];
	if (s.state == UIGestureRecognizerStateEnded) {
		[self.etchView saveCurrentPoint];
	}
	lastVelocity = s.velocity;
    */
}

- (IBAction)addVertical:(id)sender {
    NSLog(@"Adding Vertical");
    /*
    UIRotationGestureRecognizer *s = sender;
	if (lastVelocity > 0 && s.velocity < 0) {
		[self.etchView saveCurrentPoint];
	}
	if (lastVelocity < 0 && s.velocity > 0) {
		[self.etchView saveCurrentPoint];
	}
	[self.etchView setCurrentVerticalAngle:s.rotation];
	[self.etchView setCurrentVelocity:s.velocity];
	if (s.state == UIGestureRecognizerStateEnded) {
		[self.etchView saveCurrentPoint];
	}
	lastVelocity = s.velocity;
     */
}
@end
