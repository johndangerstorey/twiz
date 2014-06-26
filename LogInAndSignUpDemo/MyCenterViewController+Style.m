//
//  MyCenterViewController+Style.m
//  twiz
//
//  Created by John D. Storey on 6/24/14.
//
//

#import "MyCenterViewController+Style.h"

@implementation MyCenterViewController (Style)

- (void) viewWillAppear:(BOOL)animated{ // loaded everytime view is about to appear
    
    // Navigation Bar
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"MainBG.png"]]];
    self.title = @"Twiz";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:49.0f/255.0f green:35.0f/255.0f blue:105.0f/255.0f alpha:1.0f];
    self.navigationController.navigationBar.translucent = NO;
    //  [self.navigationController.navigationBar setFrame:CGRectMake(0, 0, 320, 14)];
    [self.navigationController.navigationBar setTitleTextAttributes:@{
                                                                      NSFontAttributeName: [UIFont fontWithName:@"MuseoSansRounded-900" size:24],
                                                                      NSForegroundColorAttributeName: [UIColor whiteColor],
                                                                      }];
    
    // creates listener for Twitter Login
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(refreshView)
                                                 name:@"LoginSuccessfulNotification"
                                               object:nil];
    
    
}

@end