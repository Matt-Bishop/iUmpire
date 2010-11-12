//
//  iUmpireViewController.m
//  iUmpire
//
//  Created by Matt Bishop on 11/5/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import "iUmpireViewController.h"

@implementation iUmpireViewController

-(iUmpireBrain *)brain
{
	if (!brain)brain =[[iUmpireBrain alloc] init];
	return brain;
}

-(IBAction)buttonPressed:(UIButton *)sender{
	NSString *operation = [[sender titleLabel] text];
	if ([operation isEqual: @"Ball"]) {
		[balls setText:[NSString stringWithFormat:@"%i",[[self brain] performOperation:operation]]];
		[strikes setText:[NSString stringWithFormat:@"%i",[[self brain] getStrikeCount]]];
		[fouls setText:[NSString stringWithFormat:@"%i",[[self brain] getFoulCount]]];
	}
	else if ([operation isEqual: @"Strike"]){
		[strikes setText:[NSString stringWithFormat:@"%d",[[self brain] performOperation:operation]]];
		[outs setText:[NSString stringWithFormat:@"%i",[[self brain] getOutCount]]];
		[fouls setText:[NSString stringWithFormat:@"%i",[[self brain] getFoulCount]]];
		[balls setText:[NSString stringWithFormat:@"%i",[[self brain] getBallCount]]];
		if ([[self brain] getTop]){
			[innings setText:[NSString stringWithFormat:@"Top %i",[[self brain] getInningCount]]]; 
		}
		else{
			[innings setText:[NSString stringWithFormat:@"Bottom %i",[[self brain] getInningCount]]];
		}
	}
	else if ([operation isEqual: @"Foul"]){
		[fouls setText:[NSString stringWithFormat:@"%i",[[self brain] performOperation:operation]]];
		[strikes setText:[NSString stringWithFormat:@"%i",[[self brain] getStrikeCount]]]; 
		[outs setText:[NSString stringWithFormat:@"%i",[[self brain] getOutCount]]];
		[balls setText:[NSString stringWithFormat:@"%i",[[self brain] getBallCount]]];
		if ([[self brain] getTop]){
			[innings setText:[NSString stringWithFormat:@"Top %i",[[self brain] getInningCount]]]; 
		}
		else{
			[innings setText:[NSString stringWithFormat:@"Bottom %i",[[self brain] getInningCount]]];
		}
	}
	else if ([operation isEqual: @"Out"]){
		[outs setText:[NSString stringWithFormat:@"%i",[[self brain] performOperation:operation]]];
		[strikes setText:[NSString stringWithFormat:@"%i",[[self brain] getStrikeCount]]]; 
		[fouls setText:[NSString stringWithFormat:@"%i",[[self brain] getFoulCount]]]; 
		[balls setText:[NSString stringWithFormat:@"%i",[[self brain] getBallCount]]]; 
		if ([[self brain] getTop]){
			[innings setText:[NSString stringWithFormat:@"Top %i",[[self brain] getInningCount]]]; 
		}
		else{
			[innings setText:[NSString stringWithFormat:@"Bottom %i",[[self brain] getInningCount]]];
		}
	}
	else if ([operation isEqual: @"Home"]){
		[homeRuns setText:[NSString stringWithFormat:@"%i",[[self brain] performOperation:operation]]];	 
	}
	else if ([operation isEqual: @"Away"]){
		[awayRuns setText:[NSString stringWithFormat:@"%i",[[self brain] performOperation:operation]]];	 
	}
	else if ([operation isEqual: @"New Game"]){
		[[self brain] performOperation:operation];	
		[strikes setText:[NSString stringWithFormat:@"%i",[[self brain] getStrikeCount]]]; 
		[fouls setText:[NSString stringWithFormat:@"%i",[[self brain] getFoulCount]]]; 
		[balls setText:[NSString stringWithFormat:@"%i",[[self brain] getBallCount]]];
		[outs setText:[NSString stringWithFormat:@"%i",[[self brain] getOutCount]]]; 
		[homeRuns setText:[NSString stringWithFormat:@"%i",[[self brain] getHomeRunCount]]]; 
		[awayRuns setText:[NSString stringWithFormat:@"%i",[[self brain] getAwayRunCount]]];
		if ([[self brain] getTop]){
			[innings setText:[NSString stringWithFormat:@"Top %i",[[self brain] getInningCount]]]; 
		 }
		else{
			[innings setText:[NSString stringWithFormat:@"Bottom %i",[[self brain] getInningCount]]];
		}
		
	}
	else if([operation isEqual: @"Reset Count"]){
		[[self brain] performOperation:operation];
		[strikes setText:[NSString stringWithFormat:@"%i",[[self brain] getStrikeCount]]]; 
		[fouls setText:[NSString stringWithFormat:@"%i",[[self brain] getFoulCount]]]; 
		[balls setText:[NSString stringWithFormat:@"%i",[[self brain] getBallCount]]];
	}
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
