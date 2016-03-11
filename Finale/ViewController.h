//
//  ViewController.h
//  Finale
//
//  Created by Umar on 1/4/16.
//  Copyright © 2016 Shazia Haroon. All rights reserved.
//

@import GoogleMobileAds;


#import <UIKit/UIKit.h>
#import <MoPub/MPAdView.h>


@interface ViewController : UIViewController <MPAdViewDelegate>



















@property (nonatomic, retain) GADBannerView *adView;



@property (weak, nonatomic) IBOutlet NSLayoutConstraint *finalViewBottomConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *finalViewHeightConstraint;

@property (weak, nonatomic) IBOutlet UIView *finalView;







@property (weak, nonatomic) IBOutlet UITextField *desiredGrade;
@property (weak, nonatomic) IBOutlet UITextField *finalWeight;
@property (weak, nonatomic) IBOutlet UITextField *currentGrade;


@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
- (IBAction)calculateButtonPressed:(UIButton *)sender;







@property (weak, nonatomic) IBOutlet UILabel *finalGradeNumberLabel;



@property (weak, nonatomic) IBOutlet UILabel *finalGradeCurrentGradeLabel;























@end
