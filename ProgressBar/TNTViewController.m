//
//  TNTViewController.m
//  ProgressBar
//
//  Created by Joe Selvik on 1/28/14.
//  Copyright (c) 2014 Joe Selvik. All rights reserved.
//

#import "TNTViewController.h"

@interface TNTViewController ()

@property (weak, nonatomic) IBOutlet UIView *stripe1;
@property (weak, nonatomic) IBOutlet UIView *stripe2;
@property CGFloat translateDistance;

@end

@implementation TNTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _translateDistance = 450;
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
    [UIView animateWithDuration:1.5
                          delay:0.0
                        options:UIViewAnimationOptionRepeat
                     animations:^{
                         _stripe2.transform = CGAffineTransformMakeTranslation(self.translateDistance, 0.0);
                     } completion:nil
     ];
}



@end




















