//
//  ESView.h
//  Quiz8
//
//  Created by Brandon on 4/13/14.
//  Copyright (c) 2014 Brandon Tauber. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESView : UIView {
    NSMutableArray *points;
    CGPoint currentPoint;
}

@property (nonatomic) float currentVelocity;
@property (nonatomic) float currentHorizontalAngle;
@property (nonatomic) float currentVerticalAngle;

- (void)drawCurrentPoint;
- (void)saveCurrentPoint;
@end
