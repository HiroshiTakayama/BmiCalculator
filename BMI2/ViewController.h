//
//  ViewController.h
//  BMI2
//
//  Created by Takayama on 2014/07/15.
//  Copyright (c) 2014年 Hiroshi Takayama. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    __weak IBOutlet UITextField *tfHeight;
    __weak IBOutlet UITextField *tfWeight;
    __weak IBOutlet UIButton *btnCalc;
    __weak IBOutlet UITextField *labelBmiTitle;
    __weak IBOutlet UITextField *labelBmiValue;
    __weak IBOutlet UITextField *labelBmiText;
}

@end
