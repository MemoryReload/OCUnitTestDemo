//
//  ViewController.m
//  MotherFucker
//
//  Created by Heping on 2018/2/28.
//  Copyright © 2018年 BONC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)transCentigradeWithFahrenheit
{
    CGFloat fDegree = self.fahrenheitTextField.text.floatValue;
    CGFloat cDegree = (fDegree-32)/1.8;
    self.centigradeLabel.text=[NSString stringWithFormat:@"%g",cDegree];
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self transCentigradeWithFahrenheit];
    return YES;
}
@end
