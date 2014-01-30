//
//  TNTViewController.m
//  ProgressBar
//
//  Created by Joe Selvik on 1/28/14.
//  Copyright (c) 2014 Joe Selvik. All rights reserved.
//

#import "TNTViewController.h"

@interface TNTViewController ()

// Progmmatic way to make activity bar
@property (strong, nonatomic) UIView *dropDownBarView;
@property (strong, nonatomic) UIImageView *dropDownStripe;

@property CGFloat translateDistance;
@property float activityBarToggle;

@end

@implementation TNTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _translateDistance = 450;
    
    _activityBarToggle = 1;
    
    // Progmmatic way to make UIView
    CGRect frameRectForBar = CGRectMake(0, 300, 320, 0);
    _dropDownBarView = [[UIView alloc] initWithFrame:frameRectForBar];
    _dropDownBarView.backgroundColor = [UIColor colorWithRed:122.0/255.0 green:17.0/255.0 blue:27.0/255.0 alpha:1.0];
    [self.view addSubview:_dropDownBarView];
    
    CGRect frameRectForStrip = CGRectMake(100, 300, 50, 2);
    _dropDownStripe = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"stripe1"]];
    _dropDownStripe.frame = frameRectForStrip;
    [self.view addSubview:_dropDownStripe];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self animateBar];
}

-(void)animateBar {
    
//    [UIView animateWithDuration:0.1
//                     animations:^() {
//        self.loadBar.alpha = 1.0;
//    }];
    
//    [UIView animateWithDuration:1.5
//                          delay:0.0
//                        options:UIViewAnimationOptionRepeat
//                     animations:^{
//                         _stripe.transform = CGAffineTransformMakeTranslation(self.translateDistance, 0.0);
//                     } completion:nil
//     ];
    
    if (self.activityBarToggle) {
        CGRect frameRect = CGRectMake(0, 300, 320, 2);
        
        [UIView animateWithDuration:0.5
                         animations:^() {
                             [self.dropDownBarView setFrame:frameRect];
                         }];
        self.activityBarToggle = 0;
    } else {
        CGRect frameRect = CGRectMake(0, 300, 320, 0);
        
        [UIView animateWithDuration:0.5
                         animations:^() {
                             [self.dropDownBarView setFrame:frameRect];
                         }];
        self.activityBarToggle = 1;
    }
}



@end
















