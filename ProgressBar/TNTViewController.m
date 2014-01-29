//
//  TNTViewController.m
//  ProgressBar
//
//  Created by Joe Selvik on 1/28/14.
//  Copyright (c) 2014 Joe Selvik. All rights reserved.
//

#import "TNTViewController.h"

@interface TNTViewController ()

@property (weak, nonatomic) IBOutlet UIView *loadBar;
@property (weak, nonatomic) IBOutlet UIImageView *stripe;
@property CGFloat translateDistance;

@end

@implementation TNTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _translateDistance = 450;
    
    //[self.loadBar setHidden:YES];
    _loadBar.alpha = 0;
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
    
    //[self.loadBar setHidden:NO];
    //self.loadBar.alpha = 1.0;
    
    [UIView animateWithDuration:0.1
                     animations:^() {
        self.loadBar.alpha = 1.0;
    }];
    
//    [UIView animateWithDuration:0.1
//                          delay:0.0
//                        options:UIViewAnimationOptionAutoreverse
//                     animations:^() {
//                         self.loadBar.alpha = 1.0;
//                     } completion:nil
//     ];
    
    [UIView animateWithDuration:1.5
                          delay:0.0
                        options:UIViewAnimationOptionRepeat
                     animations:^{
                         _stripe.transform = CGAffineTransformMakeTranslation(self.translateDistance, 0.0);
                     } completion:nil
     ];
}



@end


//CGRect frame = YourView.frame;
//[UIView beginAnimations:nil context:NULL];
//[UIView setAnimationDuration:1.0];
//
//frame.origin.x = 0; //
//pushView.frame = frame;
//self.YourView.frame = CGRectMake(250, 45, 500, 960);
//[UIView commitAnimations];

















