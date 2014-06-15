//
//  MyLogInViewController.m
//  LogInAndSignUpDemo
//
//  Created by Mattieu Gamache-Asselin on 6/15/12.
//  Copyright (c) 2013 Parse. All rights reserved.
//
#import "MyLogInViewController.h"
#import "JASidePanelController.h"
#import "MyCenterViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "MyTwitterController.h"

@interface MyLogInViewController ()
@property (nonatomic, strong) UILabel *logoText;
@end

@implementation MyLogInViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.logInView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"MainBG.png"]]];
    
    // if 'nil' not selected it will bring up Parse Logo
    [self.logInView setLogo:[UIImage imageNamed:nil]];
    
    UILabel *logoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 40)];
    logoLabel.text = @"TWIZ";
    logoLabel.textColor = [UIColor whiteColor];
    logoLabel.textAlignment = NSTextAlignmentCenter;
    
    UIFont *museoTitleFont = [UIFont fontWithName:@"MuseoSansRounded-900" size:40.0];
    logoLabel.font = museoTitleFont;
    logoLabel.textAlignment = NSTextAlignmentCenter;
    [self.logInView addSubview:logoLabel];
    
    
    // tagline ^see above comment on repeating code
    
    
    UILabel *taglineLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 240, self.view.bounds.size.width, 40)];
    taglineLabel.text = @"the twitter quiz game";
    taglineLabel.textColor = [UIColor whiteColor];
    taglineLabel.textAlignment = NSTextAlignmentCenter;
    
    UIFont *museoTagLineFont = [UIFont fontWithName:@"MuseoSansRounded-300" size:14.0];
    taglineLabel.font = museoTagLineFont;
    taglineLabel.textAlignment = NSTextAlignmentCenter;
    [self.logInView addSubview:taglineLabel];
    
    // removes pre-made twitter button
    [self.logInView.twitterButton removeFromSuperview];
    
    // makes my custom one
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(twitterSignIn)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Login with Twitter" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    UIFont *museoButtonFont = [UIFont fontWithName:@"MuseoSansRounded-500" size:18.0];
    [button setFont:museoButtonFont];
    button.frame = CGRectMake(60.0, 287.0, 200.0, 40.0);
    [[button layer] setCornerRadius:5.0f];
    [[button layer] setBorderWidth:1.0f];
    [[button layer] setBorderColor:[UIColor whiteColor].CGColor];
    [self.view addSubview:button];

}

-(BOOL) twitterSignIn {
    NSLog(@"You Clicked Sign In");
    [PFTwitterUtils logInWithBlock:^(PFUser *user, NSError *error) {
        if (!user) {
            NSLog(@"Uh oh. The user cancelled the Twitter login.");
            return;
        } else if (user.isNew) {
            // give intro run through here, or welcome message
            NSLog(@"User signed up and logged in with Twitter!");
        } else {
            
            NSLog(@"signin Sucessfull");
            [[NSNotificationCenter defaultCenter] postNotificationName:@"LoginSuccessfulNotification" object:nil userInfo:nil];
            NSLog(@"Post Successfull");
            [self loadTweets];
            [self dismissViewControllerAnimated:YES completion:NULL];

        }     
    }];
    return YES;
}
- (void)loadTweets
{
    NSString *userName = @"johnDANGRstorey";
    [MyTwitterController requestTweetBucketDictionary:(NSString *)userName];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
