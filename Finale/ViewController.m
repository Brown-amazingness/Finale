//
//  ViewController.m
//  Finale
//
//  Created by Umar on 1/4/16.
//  Copyright © 2016 Shazia Haroon. All rights reserved.
//

#import "ViewController.h"
#import "UHGrade.h"

@interface ViewController () <UITextFieldDelegate>
{
    UHGrade *grade;
    
}
@property CGFloat heightFinalView;
@end

@implementation ViewController
@synthesize finalViewBottomConstraint,finalView;
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self prefersStatusBarHidden];
    
    
}
-(void)viewDidLoad{
    [super viewDidLoad];
    grade = [UHGrade new];
    
    self.desiredGrade.delegate = self ;
    self.currentGrade.delegate = self;
    self.finalWeight.delegate = self;
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardShown:) name:UIKeyboardWillShowNotification object:nil];
    
    
    UITapGestureRecognizer *dismissKeyboard = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss:)];
    
    [self.view addGestureRecognizer:dismissKeyboard];
    
    
    
}
- (void)keyboardShown:(NSNotification *)notification {
    
    _heightFinalView = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
    
    
}

-(void)dismiss:(id)sender{
    [self.view endEditing:YES];
    self.finalViewBottomConstraint.constant = -600;
    
    
    [UIView animateWithDuration:.5 delay:0 usingSpringWithDamping:1 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.finalView.alpha = 1;
        [self.finalView layoutIfNeeded];
    }completion:nil];
    
    
    [UIView animateWithDuration:.5 delay:0 usingSpringWithDamping:1 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.finalView.alpha = 0;
        [self.finalView layoutIfNeeded];
        
    }completion:nil];
    
    [UIView animateWithDuration:.5 delay:.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [_calculateButton removeTarget:self action:@selector(resetButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [_calculateButton addTarget:self action:@selector(calculateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [_calculateButton setBackgroundColor:[UIColor colorWithRed:21.0f/255.0f green:169.0f/255.0f blue:227.0/255.0f alpha:1.0]];
        [_calculateButton setTitle:@"Find Required Grade" forState:UIControlStateNormal];
        
        
    }completion:nil];
    
    
    
    grade.desiredGradeValue = 0;
    grade.currentGradeValue = 0;
    grade.finalWeightValue = 0;
    grade.finalGradeValue = 0;
    self.desiredGrade.text = nil;
    self.currentGrade.text = nil;
    self.finalWeight.text = nil;

    [self.view endEditing:YES];

}
//
//
//
//    // TODO: MAKE THIS GOOGLE ADS
//        GADBannerView* adView = [[GADBannerView alloc] initWithAdSize:kGADAdSizeSmartBannerPortrait];
//        self.adView = adView;
//;
//        self.adView.rootViewController = self;
//
//
//        // Positions the ad at the bottom, with the correct size
//        self.adView.frame = CGRectMake(0, self.view.bounds.size.height - MOPUB_BANNER_SIZE.height,
//                                       MOPUB_BANNER_SIZE.width, MOPUB_BANNER_SIZE.height);
//        self.adView.center = CGPointMake(self.view.center.x, self.adView.center.y);
////    self.adView.adUnitID = @"ca-app-pub-7626210410574910/2936505185";
//
//

//
//        // Loads the ad over the network

//        [self.view bringSubviewToFront:adBackgroundView];
//
//        [self.view bringSubviewToFront:adBackgroundLabel];
//    [self.adView loadRequest:[GADRequest request]];
//
//
//        [self.view bringSubviewToFront:self.adView];
//
//


//
//#pragma mark - <MPAdViewDelegate>
//- (UIViewController *)viewControllerForPresentingModalView {
//    return self;
//}
//
//
//#pragma mark - Button Actions

-(void)resetButtonPressed:(UIButton *)button{
    
    self.finalViewBottomConstraint.constant = -600;
    
    
    
    [UIView animateWithDuration:.5 delay:0 usingSpringWithDamping:1 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.finalView.alpha = 0;
        [self.finalView layoutIfNeeded];
        
    }completion:nil];
    
    [UIView animateWithDuration:.5 delay:.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [_calculateButton removeTarget:self action:@selector(resetButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [_calculateButton addTarget:self action:@selector(calculateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [_calculateButton setBackgroundColor:[UIColor colorWithRed:21.0f/255.0f green:169.0f/255.0f blue:227.0/255.0f alpha:1.0]];
        [_calculateButton setTitle:@"Find Required Grade" forState:UIControlStateNormal];
        
        
    }completion:nil];
    
    
    
    grade.desiredGradeValue = 0;
    grade.currentGradeValue = 0;
    grade.finalWeightValue = 0;
    grade.finalGradeValue = 0;
    self.desiredGrade.text = nil;
    self.currentGrade.text = nil;
    self.finalWeight.text = nil;
    
    
    
    
    
    
    
    
    
    
    
}

//#pragma mark - Misc

-(BOOL)prefersStatusBarHidden{
    return YES;
}


- (IBAction)calculateButtonPressed:(UIButton *)sender {
    self.finalViewHeightConstraint.constant = _heightFinalView;
    [self.view endEditing:YES];
    
    
    grade.currentGradeValue = [self.currentGrade.text floatValue];
    grade.finalWeightValue = [self.finalWeight.text floatValue];
    grade.desiredGradeValue = [self.desiredGrade.text floatValue];
    if (grade.currentGradeValue > 0 && grade.desiredGradeValue > 0 && (grade.finalWeightValue >0 && grade.finalWeightValue <= 100)) {
        
        self.finalViewBottomConstraint.constant = 0;
        
        
        
        [UIView animateWithDuration:.5 delay:0 usingSpringWithDamping:1 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseIn animations:^{
            self.finalView.alpha = 1;
            [self.finalView layoutIfNeeded];
            
            
        }completion:nil];
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            [_calculateButton removeTarget:self action:@selector(calculateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
            [_calculateButton addTarget:self action:@selector(resetButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
            [_calculateButton setTitle:@"Reset" forState:UIControlStateNormal];
            [_calculateButton setBackgroundColor:[UIColor redColor]];
            
        }completion:nil];
        
        
        
        grade.finalGradeValue = (-(((grade.currentGradeValue * (1-(grade.finalWeightValue / 100))) - grade.desiredGradeValue)/(grade.finalWeightValue / 100)));
        
        
        if (grade.desiredGradeValue > grade.currentGradeValue) {
            self.finalGradeNumberLabel.text = [NSString stringWithFormat:@"%.1f%%", grade.finalGradeValue];
            
            self.finalGradeCurrentGradeLabel.text = [NSString stringWithFormat:@"To get a %.1f%%",grade.desiredGradeValue];
            
        }else{
            self.finalGradeNumberLabel.text = [NSString stringWithFormat:@"%.1f%%",grade.finalGradeValue];
            
            self.finalGradeCurrentGradeLabel.text = [NSString stringWithFormat:@"To keep a %.1f%%",grade.desiredGradeValue];            }
    }
    
    
    
    
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    self.finalViewBottomConstraint.constant = -600;
    
    
    [UIView animateWithDuration:.5 delay:0 usingSpringWithDamping:.87 initialSpringVelocity:86 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        
        
        [self.finalView layoutIfNeeded];
        
    }completion:nil];
    
    return YES;
}

@end
