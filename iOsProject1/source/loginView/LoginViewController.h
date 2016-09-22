//
//  LoginViewController.h
//  iOsProject1
//
//  Created by ntq on 9/22/16.
//  Copyright © 2016 HungHN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtUserName;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;
@property (strong, nonatomic) IBOutlet UILabel *lblForgotPass;
@property (strong, nonatomic) IBOutlet UIButton *btnCheck;
@property (strong, nonatomic) IBOutlet UIButton *btnLogin;

@property (nonatomic, assign) BOOL hasArgeeTermOfUse;

@end
