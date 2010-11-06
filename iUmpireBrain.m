//
//  iUmpireBrain.m
//  iUmpire
//
//  Created by Matt Bishop on 11/5/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import "iUmpireBrain.h"


@implementation iUmpireBrain



//Not Traditional setter methods!!!!!!!!

- (void)setStrikeCount{
	
	
	strikeCount = strikeCount+1; 
	if (strikeCount >2){
		strikeCount = 0;
		ballCount = 0;
		foulCount = 0;
		[self setOutCount];
	}
}

- (void)setBallCount{
	ballCount += 1;
	if (ballCount > 3) {
		ballCount = 0;
		strikeCount = 0;
		foulCount = 0;
	}
}

- (void)setOutCount{
	outCount += 1;
	if (outCount >2) {
		outCount = 0;
		if (top) {
			top = NO;
		}
		else{
			[self setInningCount];
			top = YES;
		}
	}
}

- (void)setFoulCount{
	foulCount += 1;
	if (strikeCount < 2) {
		strikeCount += 1;
	}
	if (foulCount == 4) {
	[self setStrikeCount];
	}
}

- (void)setHomeRunCount{
	homeRunCount += 1;
}

- (void)setAwayRunCount{
	awayRunCount += 1;
}

- (void)setInningCount{
	inningCount += 1;
}


- (int)getStrikeCount{
	return strikeCount;
}

- (int)getBallCount{
	return ballCount;
}

- (int)getOutCount{
	return outCount;
}

- (int)getFoulCount{
	return foulCount;
}

- (int)getHomeRunCount{
	return homeRunCount;
}

- (int)getAwayRunCount{
	return awayRunCount;
}

- (int)getInningCount{
	return inningCount;
}

- (bool)getTop{
	return top;
}


- (int)performOperation:(NSString *)operation{
	if([operation isEqual:@"Ball"]){
		[self setBallCount];
		return ballCount;
	}
	else if([operation isEqual:@"Strike"]){
		[self setStrikeCount];
		return strikeCount;
	}
	else if([operation isEqual:@"Out"]){
		[self setOutCount];
		return outCount;
	}
	else if([operation isEqual:@"Foul"]){
		[self setFoulCount];
		return foulCount;
	}
	else if([operation isEqual:@"Home"]){
		[self setHomeRunCount];
		return homeRunCount;
	}
	else if([operation isEqual:@"Away"]){
		[self setAwayRunCount];
		return awayRunCount;
	}
	else if([operation isEqual:@"New Game"]){
		ballCount = 0;
		strikeCount = 0;
		foulCount = 0;
		outCount = 0;
		homeRunCount = 0;
		awayRunCount = 0;
		inningCount = 1;
		top = YES;
		return 1;
	}
	else if([operation isEqual:@"Reset Count"]){
		ballCount = 0;
		strikeCount = 0;
		foulCount = 0;
	}
	return -1;
}

@end
