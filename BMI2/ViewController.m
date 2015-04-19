//
//  ViewController.m
//  BMI2
//
//  Created by Takayama on 2014/07/15.
//  Copyright (c) 2014年 Hiroshi Takayama. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    labelBmiTitle.hidden = YES;
    labelBmiValue.hidden = YES;
    labelBmiText.hidden = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField*)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)calcBmi
{
    float height = [tfHeight.text floatValue] / 100;
    float weight = [tfWeight.text floatValue];
    float bmiValue = weight / (height*height);
    
    labelBmiValue.text = [[NSString alloc] initWithFormat:@"%.2f", bmiValue];
    
    if (bmiValue < 17.6) {
        labelBmiText.text = @"痩せすぎ";
    } else if(bmiValue < 19.8) {
        labelBmiText.text = @"痩せ気味";
    } else if (bmiValue < 24.2) {
        labelBmiText.text = @"普通";
    } else if (bmiValue < 26.4) {
        labelBmiText.text = @"太り気味";
    } else {
        labelBmiText.text = @"糞デブ";
    }
    
    labelBmiTitle.hidden = NO;
    labelBmiValue.hidden = NO;
    labelBmiText.hidden = NO;
    
}

@end
