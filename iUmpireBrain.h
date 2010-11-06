//
//  iUmpireBrain.h
//  iUmpire
//
//  Created by Matt Bishop on 11/5/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface iUmpireBrain : NSObject {
	int strikeCount;
	int ballCount;
	int outCount;
	int foulCount;
	int homeRunCount;
	int awayRunCount;
	int inningCount;
	bool top;
	
}

- (void)setStrikeCount;
- (void)setBallCount;
- (void)setOutCount;
- (void)setFoulCount;
- (void)setHomeRunCount;
- (void)setAwayRunCount;
- (void)setInningCount;

- (int)getStrikeCount;
- (int)getBallCount;
- (int)getOutCount;
- (int)getFoulCount;
- (int)getHomeRunCount;
- (int)getAwayRunCount;
- (int)getInningCount;
- (bool)getTop;

- (int)performOperation:(NSString *)operation;

@end
