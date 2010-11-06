//
//  iUmpireViewController.h
//  iUmpire
//
//  Created by Matt Bishop on 11/5/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iUmpireBrain.h"

@interface iUmpireViewController : UIViewController {
	IBOutlet UILabel *balls;
	IBOutlet UILabel *strikes;
	IBOutlet UILabel *fouls;
	IBOutlet UILabel *outs;
	IBOutlet UILabel *homeRuns;
	IBOutlet UILabel *awayRuns;
	IBOutlet UILabel *innings;
	iUmpireBrain *brain;
}

-(IBAction)buttonPressed:(UIButton *)sender;

@end

