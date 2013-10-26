//
//  LSCViewController.h
//  PodsTest
//
//  Created by Lunescope on 17Oct13.
//  Copyright (c) 2013 Lunescope. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *showsScrollView;

@property (weak, nonatomic) IBOutlet UIPageControl *showPageControl;

- (IBAction)pageChanged:(id)sender;

@end
