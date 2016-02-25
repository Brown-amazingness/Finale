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
@end

@implementation ViewController
//-(void)viewDidAppear {
//    [self prefersStatusBarHidden];
//}
//- (void)viewDidLoad {
-(void)viewDidLoad{
    NSLog(@"View loaded");
}
//    [super viewDidLoad];
//    grade = [UHGrade new];
//    
//    
//    // Do any additional setup after loading the view, typically from a nib.
//    self.desiredGrade = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, ((self.view.frame.size.height)- 50)/5)];
//    
//    self.desiredGrade.backgroundColor = [UIColor colorWithRed:236.0f/255.0f green:240.0/255.0f blue:241.0f/255.0f alpha:1];
//    self.desiredGrade.textAlignment = NSTextAlignmentCenter;
//    
//    
//    [self.desiredGrade setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:47.0]];
//    [self.desiredGrade setKeyboardType:UIKeyboardTypeDecimalPad];
//    self.desiredGrade.attributedPlaceholder =
//    [[NSAttributedString alloc] initWithString:@"Desired Grade:"
//                                    attributes:@{
//                                                 NSForegroundColorAttributeName: [UIColor colorWithRed:189.0f/255.0f green:195.0f/255.0f blue:199.0f/255.0f alpha:1],
//                                                 NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:47.0]
//                                                 }
//     ];
//    
//    
//    self.finalWeight = [[UITextField alloc] initWithFrame:CGRectMake(0, self.desiredGrade.frame.size.height, self.view.frame.size.width, self.desiredGrade.frame.size.height)];
//    
//    
//    self.finalWeight.backgroundColor = [UIColor colorWithRed:225.0f/255.0f green:229.0f/255.0f blue:230.0f/255.0f alpha:1];
//    
//    
//    self.finalWeight.delegate = self;
//    [self.finalWeight setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:47.0]];
//    [self.finalWeight setKeyboardType:UIKeyboardTypeDecimalPad];
//    self.finalWeight.textAlignment = NSTextAlignmentCenter;
//    self.finalWeight.attributedPlaceholder =
//    [[NSAttributedString alloc] initWithString:@"Weight:"
//                                    attributes:@{
//                                                 NSForegroundColorAttributeName: [UIColor colorWithRed:189.0f/255.0f green:195.0f/255.0f blue:199.0f/255.0f alpha:1],
//                                                 NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:47.0]
//                                                 }
//     ];
//    _vibrancyEffectView = [[UIVisualEffectView alloc] initWithEffect:[UIVibrancyEffect effectForBlurEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]]];
//    _vibrancyEffectView.frame = self.view.bounds;
//    
//    self.finalView = [[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
//    self.finalView.frame = self.view.bounds;
//    [self.view addSubview:self.finalView];
//    [[_finalView contentView] addSubview:_vibrancyEffectView];
//    
//    self.finalGradeLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2 - 40, self.view.frame.size.width, 100)];
//    self.finalGradeLabel.textAlignment = NSTextAlignmentCenter;
//    self.finalGradeLabel.numberOfLines = 0;
//    //    _finalGradeLabel.center = CGPointMake(self.view.frame.size.width / 2, _finalGradeLabel.center.y);
//    self.finalGradeLabel.attributedText = [[NSAttributedString alloc] initWithString:@"You'll need a: 100%"
//                                                                          attributes:@{
//                                                                                       NSForegroundColorAttributeName: [UIColor colorWithRed:189.0f/255.0f green:195.0f/255.0f blue:199.0f/255.0f alpha:1],
//                                                                                       
//                                                                                       NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:37.0]
//                                                                                       }
//                                           ];
//    [self.finalView addSubview:self.finalGradeLabel];
//    
//    
//    
//    self.currentGrade = [[UITextField alloc] initWithFrame:CGRectMake(0, self.desiredGrade.frame.size.height * 2, self.view.frame.size.width, self.desiredGrade.frame.size.height)];
//    
//    
//    self.currentGrade.backgroundColor = [UIColor colorWithRed:236.0f/255.0f green:240.0/255.0f blue:241.0f/255.0f alpha:1];
//    
//    self.currentGrade.textAlignment = NSTextAlignmentCenter;
//    self.currentGrade.delegate = self;
//    [self.currentGrade setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:47.0]];
//    [self.currentGrade setKeyboardType:UIKeyboardTypeDecimalPad];
//    self.currentGrade.attributedPlaceholder =
//    [[NSAttributedString alloc] initWithString:@"Current Grade:"
//                                    attributes:@{
//                                                 NSForegroundColorAttributeName: [UIColor colorWithRed:189.0f/255.0f green:195.0f/255.0f blue:199.0f/255.0f alpha:1],
//                                                 NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:47.0]
//                                                 }
//     ];
//    
//    
//    
//    self.calculateButton = [[UIButton alloc] initWithFrame:CGRectMake(0, self.desiredGrade.frame.size.height * 3, self.view.frame.size.width, self.desiredGrade.frame.size.height)];
//    [self.calculateButton addTarget:self action:@selector(calculateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//    [self.calculateButton setTitle:@"Calculate" forState:UIControlStateNormal];
//    [self.calculateButton setBackgroundColor:[UIColor greenColor]];
//    [self.calculateButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Light" size:47.0]];
//    
//    self.resetButton = [[UIButton alloc]initWithFrame:CGRectMake(0,self.desiredGrade.frame.size.height * 4,self.view.frame.size.width, self.desiredGrade.frame.size.height)];
//    [self.resetButton addTarget:self action:@selector(resetButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//    [self.resetButton setTitle:@"Reset" forState:UIControlStateNormal];
//    [self.resetButton setBackgroundColor:[UIColor redColor]];
//    [self.resetButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Light" size:47.0]];
//    
//        UIVisualEffectView *adBackgroundView = [[UIVisualEffectView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 50.0f,self.view.frame.size.width, 50.0f)];
//        adBackgroundView.effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
//    
//        [self.view addSubview:adBackgroundView];
//    
//    
//    [self.view addSubview:self.desiredGrade];
//    [self.view addSubview:self.finalWeight];
//    [self.view addSubview:self.currentGrade];
//    
//    
//    
//    [self.view addSubview:self.resetButton];
//    [self.view addSubview:self.calculateButton];
//    
//    
//    
//    // TODO: Replace this test id with your personal ad unit id
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
//    [self.view bringSubviewToFront:self.finalView];
//    //
//    self.finalView.alpha = 0;
//    
//        UILabel *adBackgroundLabel = [[UILabel alloc]initWithFrame:CGRectMake(adBackgroundView.frame.origin.x, adBackgroundView.frame.origin.y, 100, 30)];
//        adBackgroundLabel.textAlignment = NSTextAlignmentCenter;
//        adBackgroundLabel.numberOfLines = 0;
//        adBackgroundLabel.text = @"Loading ad...";
//        adBackgroundLabel.textColor = [UIColor blackColor];
//        adBackgroundLabel.center = CGPointMake(self.view.center.x, adView.center.y);//+self.resetButton.frame.size.height));
//    
//        [self.view addSubview:adBackgroundLabel];
//    
//    
//        [self.view bringSubviewToFront:adBackgroundView];
//            [self.view addSubview:self.adView];
//
//        // Loads the ad over the network
//        adBackgroundView.alpha = 1;
//        [self.view bringSubviewToFront:adBackgroundView];
//
//        [self.view bringSubviewToFront:adBackgroundLabel];
//    [self.adView loadRequest:[GADRequest request]];
//    
//
//        [self.view bringSubviewToFront:self.adView];
//    
//    
//    UITapGestureRecognizer *dismissKeyboard = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss:)];
//    [dismissKeyboard setNumberOfTapsRequired:2];
//    [self.view addGestureRecognizer:dismissKeyboard];
//    
//    
//    
//    UIToolbar* numberToolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 3)];
//    numberToolbar.barStyle = UIBarStyleDefault;
//    numberToolbar.items = @[[[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(cancelNumberPad)],
//                            [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
//                            [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(doneWithNumberPad)]];
//    [numberToolbar sizeToFit];
//    self.desiredGrade.inputAccessoryView = numberToolbar;
//    self.currentGrade.inputAccessoryView = numberToolbar;
//    self.finalWeight.inputAccessoryView = numberToolbar;
//}
//
//-(void)cancelNumberPad{
//    [self.desiredGrade resignFirstResponder];
//    [self.finalWeight resignFirstResponder];
//    [self.currentGrade resignFirstResponder];
//    
//}
//
//-(void)doneWithNumberPad{
//    grade = [UHGrade new];
//    if ([self.currentGrade.text floatValue]>100 || [self.currentGrade.text floatValue]<0) {
//        grade.currentGradeValue = 100;
//    }else{
//        grade.currentGradeValue = [self.currentGrade.text floatValue];
//    }
//    if ([self.finalWeight.text floatValue] > 100 || [self.finalWeight.text floatValue] < 0) {
//        grade.finalWeightValue = 100;
//    }else{
//        grade.finalWeightValue = [self.finalWeight.text floatValue];
//    }
//    if ([self.desiredGrade.text floatValue] > 100 || [self.desiredGrade.text floatValue] < 0){
//        grade.desiredGradeValue = 100;
//    }else{
//        grade.desiredGradeValue = [self.finalWeight.text floatValue];
//    }
//    [self.desiredGrade resignFirstResponder];
//    [self.finalWeight resignFirstResponder];
//    [self.currentGrade resignFirstResponder];
//}
//
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
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
//-(void)calculateButtonPressed:(UIButton *)button{
//    
//    
//    grade.currentGradeValue = [self.currentGrade.text floatValue];
//    grade.finalWeightValue = [self.finalWeight.text floatValue];
//    grade.desiredGradeValue = [self.desiredGrade.text floatValue];
//    if (grade.currentGradeValue > 0 && grade.desiredGradeValue > 0 && (grade.finalWeightValue >0 && grade.finalWeightValue <= 100)) {
//        
//        
//        
//        [UIView animateWithDuration:.5 delay:0 usingSpringWithDamping:.71 initialSpringVelocity:.1 options:UIViewAnimationOptionCurveEaseIn animations:^{
//            [self.calculateButton setFrame:CGRectMake(self.view.frame.size.width / 2, self.resetButton.frame.origin.y, self.view.frame.size.width / 2, self.desiredGrade.frame.size.height)];
//            [self.resetButton setFrame:CGRectMake(0, self.desiredGrade.frame.size.height * 4,self.view.frame.size.width / 2, self.desiredGrade.frame.size.height)];
//            //        self.finalView.alpha = .9;
//            //        _vibrancyEffectView.alpha = .9;
//            self.finalView.alpha = 1;
//            _vibrancyEffectView.alpha = 1;
//            [self.calculateButton setBackgroundColor:[UIColor colorWithRed:12.0/255.0f green:152.0/255.0f blue:188.0/255.0f alpha:1]];
//            [self.calculateButton setTitle:@"Share" forState:UIControlStateNormal];
//            [self.calculateButton addTarget:self action:@selector(shareButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//            
//            [self.calculateButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Light" size:30.0]];
//            
//            [self.resetButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Light" size:30.0]];
//            [_resetButton setTitle:@"Back" forState:UIControlStateNormal];
//            
//        }completion:nil];
//        
////        [self.view bringSubviewToFront:self.adView];
//        [self.view bringSubviewToFront:self.calculateButton];
//        [self.view bringSubviewToFront:self.resetButton];
//        
//        
//        
//        
//        grade.finalGradeValue = (-(((grade.currentGradeValue * (1-(grade.finalWeightValue / 100))) - grade.desiredGradeValue)/(grade.finalWeightValue / 100)));
//        
//        
//        if (grade.desiredGradeValue > grade.currentGradeValue) {
//            self.finalGradeLabel.attributedText = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"You'll need a %.1f%% to get a %.1f%%",grade.finalGradeValue,grade.desiredGradeValue]
//                                                                                  attributes:@{
//                                                                                               NSForegroundColorAttributeName: [UIColor colorWithRed:189.0f/255.0f green:195.0f/255.0f blue:199.0f/255.0f alpha:1],
//                                                                                               
//                                                                                               NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:37.0]
//                                                                                               }
//                                                   ];
//            _finalGradeLabel.center = CGPointMake(self.view.frame.size.width / 2, _finalGradeLabel.center.y);
//            [_finalGradeLabel sizeToFit];
//            _finalGradeLabel.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
//            
//        }else{
//            self.finalGradeLabel.attributedText = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"You'll need a %.1f%% to keep a %.1f%%",grade.finalGradeValue,grade.desiredGradeValue]
//                                                                                  attributes:@{
//                                                                                               NSForegroundColorAttributeName: [UIColor colorWithRed:189.0f/255.0f green:195.0f/255.0f blue:199.0f/255.0f alpha:1],
//                                                                                               
//                                                                                               NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:37.0]
//                                                                                               }
//                                                   ];
//            _finalGradeLabel.center = CGPointMake(self.view.frame.size.width / 2, _finalGradeLabel.center.y);
//            _finalGradeLabel.center = CGPointMake(self.view.frame.size.width / 2, _finalGradeLabel.center.y);
//            [_finalGradeLabel sizeToFit];
//            _finalGradeLabel.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
//            
//        }
//    }
//    
//}
//
//-(void)resetButtonPressed:(UIButton *)button{
//    
//    
//    [self.calculateButton removeTarget:self action:@selector(shareButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//    [UIView animateWithDuration:.5 delay:0 usingSpringWithDamping:.71 initialSpringVelocity:.6 options:UIViewAnimationOptionCurveEaseIn animations:^{
//        if ([_resetButton.currentTitle  isEqual: @"Reset"]) {
//            [self.calculateButton addTarget:self action:@selector(calculateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//            
//            grade.desiredGradeValue = 0;
//            grade.currentGradeValue = 0;
//            grade.finalWeightValue = 0;
//            grade.finalGradeValue = 0;
//            self.finalGradeLabel.text = nil;
//            self.desiredGrade.text = nil;
//            self.currentGrade.text = nil;
//            self.finalWeight.text = nil;
//            
//        }else{
//            [self.calculateButton setFrame:CGRectMake(0, self.desiredGrade.frame.size.height * 3, self.view.frame.size.width, self.desiredGrade.frame.size.height)];
//            [self.resetButton setFrame:CGRectMake(0,self.desiredGrade.frame.size.height * 4,self.view.frame.size.width, self.desiredGrade.frame.size.height)];
//            self.finalView.alpha = 0;
//            [self.calculateButton setBackgroundColor:[UIColor greenColor]];
//            [self.calculateButton setTitle:@"Calculate" forState:UIControlStateNormal];
//            [_resetButton setTitle:@"Reset" forState:UIControlStateNormal];
//            
//            
//            [self.calculateButton addTarget:self action:@selector(calculateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
//            
//            [self.calculateButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Light" size:47.0]];
//            
//            [self.resetButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Light" size:47.0]];
//        }
//        
//    }completion:nil];
//    
//    
//}
//
//-(void)shareButtonPressed:(UIButton *)button{
//    
//    if (grade.finalGradeValue!=NAN) {
//        NSString *messageText;
//        if (!(grade.desiredGradeValue > grade.currentGradeValue)) {
//            NSString *message = [NSString stringWithFormat:@"I need a %.1f%% to keep a %.1f%% on my final!",grade.finalGradeValue,grade.desiredGradeValue];
//            messageText = message;
//        }else{
//            NSString *message = [NSString stringWithFormat:@"I need a %.1f%% on my final to get a %.1f%%...", grade.finalGradeValue,grade.desiredGradeValue];
//            messageText = message;
//            
//        }
//        
//        NSArray *activityVCItems = @[messageText];
//        UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:activityVCItems applicationActivities:nil];
//        activityVC.popoverPresentationController.sourceView = self.view;
//        activityVC.excludedActivityTypes = @[UIActivityTypeAirDrop];
//        
//        [self presentViewController:activityVC animated:YES completion:nil];
//    }
//    
//    
//}
//
//#pragma mark - Misc
//-(void)dismiss:(id)sender{
//    [self.view endEditing:YES];
//}
//-(BOOL)prefersStatusBarHidden{
//    return YES;
//}
//- (BOOL)textFieldShouldReturn:(UITextField *)textField {
//    [textField resignFirstResponder];
//    return YES;
//}

@end
