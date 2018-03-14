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

- (void)transCentigradeWithFahrenheitTextField:(UITextField*)textField
{
    
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self transCentigradeWithFahrenheitTextField:self.fahrenheitTextField];
    return YES;
}
@end
