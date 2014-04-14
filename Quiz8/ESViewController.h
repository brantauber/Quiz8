//
//  ESViewController.h
//  Quiz8
//
//  Created by Brandon on 4/13/14.
//  Copyright (c) 2014 Brandon Tauber. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ESView.h"

@interface ESViewController : UIViewController {
    float lastVelocity;
}
@property (weak, nonatomic) IBOutlet ESView *etchView;
- (IBAction)addHorizontal:(id)sender;
- (IBAction)addVertical:(id)sender;
@end
