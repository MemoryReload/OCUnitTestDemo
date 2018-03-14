//
//  ViewController.h
//  MotherFucker
//
//  Created by Heping on 2018/2/28.
//  Copyright © 2018年 BONC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *fahrenheitTextField;
@property (strong, nonatomic) IBOutlet UILabel *centigradeLabel;
@end

