/*
 Copyright (c) 2012 Jesse Andersen. All rights reserved.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 If you happen to meet one of the copyright holders in a bar you are obligated
 to buy them one pint of beer.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */


#import "JALeftViewController.h"
#import "JASidePanelController.h"
#import "MyCenterViewController.h"
#import "UIViewController+JASidePanel.h"
#import "JARightViewController.h"

@interface JALeftViewController ()

@property (nonatomic, weak) UILabel *I;
@property (nonatomic, weak) UILabel *PITTY;
@property (nonatomic, weak) UILabel *DA;
@property (nonatomic, weak) UILabel *FOOL;
@property (nonatomic, weak) UILabel *DAT;
@property (nonatomic, weak) UILabel *SWIPE;
@property (nonatomic, weak) UILabel *RIGHT;


@end

@implementation JALeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *mrTrexImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mrTrex.jpg"]];
    [mrTrexImage setFrame:CGRectMake(0, 0, mrTrexImage.frame.size.width, mrTrexImage.frame.size.height)];
    [self.view addSubview:mrTrexImage];
    
}
@end
