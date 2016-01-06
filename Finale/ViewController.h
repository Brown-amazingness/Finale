//
//  ViewController.h
//  Finale
//
//  Created by Umar on 1/4/16.
//  Copyright © 2016 Shazia Haroon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MoPub/MPAdView.h>


@interface ViewController : UIViewController <MPAdViewDelegate>



















@property (nonatomic, retain) MPAdView *adView;











@property (strong, nonatomic) UITextField *desiredGrade;
@property (strong, nonatomic) UITextField *finalWeight;
@property (strong, nonatomic) UITextField *currentGrade;


@property (strong, nonatomic) UIButton *calculateButton;
@property (strong, nonatomic) UIButton *resetButton;
@property (strong, nonatomic) UIButton *shareButton;


@property (strong, nonatomic) UILabel *finalGradeLabel;

@property (strong, nonatomic) UIVisualEffectView *finalView;

@property (strong, nonatomic) UIVisualEffectView *vibrancyEffectView;




























@end
