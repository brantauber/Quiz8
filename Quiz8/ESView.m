//
//  ESView.m
//  Quiz8
//
//  Created by Brandon on 4/13/14.
//  Copyright (c) 2014 Brandon Tauber. All rights reserved.
//

#import "ESView.h"

@implementation ESView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    
    return self;
}

- (void)saveCurrentPoint {
    [points addObject:[NSValue valueWithCGPoint:currentPoint]];
}

- (void)drawCurrentPoint {
    [[UIColor whiteColor] setStroke];
    UIBezierPath *bp = [[UIBezierPath alloc] init];
    [bp moveToPoint:currentPoint];
    [bp setLineWidth:4];
    CGPoint p = CGPointMake(currentPoint.x - 2, currentPoint.y - 2);
    [bp addLineToPoint:p];
    p.x += 4;
    [bp addLineToPoint:p];
    p.y += 4;
    [bp addLineToPoint:p];
    p.x -= 4;
    [bp addLineToPoint:p];
    [bp stroke];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.subtype == UIEventSubtypeMotionShake) {
        [points removeAllObjects];
        [points addObject:[NSValue valueWithCGPoint:currentPoint]];
        [self setNeedsDisplay];
    }
    if ([super respondsToSelector:@selector(motionEnded:withEvent:)])
        [super motionEnded:motion withEvent:event];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    UIBezierPath *bp = [[UIBezierPath alloc] init];
    [bp setLineWidth:3.0];
    [[UIColor blackColor] setStroke];
    [bp moveToPoint:[[points firstObject] CGPointValue]];
    for (id p in points) {
        [bp addLineToPoint:[p CGPointValue]];
    }
    CGPoint endPoint = [[points lastObject] CGPointValue];
    currentPoint = CGPointMake(endPoint.x + self.currentHorizontalAngle*10.0, endPoint.y + self.currentVerticalAngle*10.0);
    if (currentPoint.x < 0)
        currentPoint.x = 0;
    if (currentPoint.x > self.bounds.size.width)
        currentPoint.x = self.bounds.size.width;
    if (currentPoint.y < 0)
        currentPoint.y = 0;
    if (currentPoint.y > self.bounds.size.height)
        currentPoint.y = self.bounds.size.height;
    [bp addLineToPoint:currentPoint];
    [self saveCurrentPoint];
    [bp stroke];
    [self drawCurrentPoint];
}


@end
