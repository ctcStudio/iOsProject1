//
//  LoginViewController.m
//  iOsProject1
//
//  Created by ntq on 9/22/16.
//  Copyright © 2016 HungHN. All rights reserved.
//

#import "LoginViewController.h"
#import "CategoryViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - init view controller
-(void) initView {
    
    _txtUserName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"ID（メールアドレス）" attributes:@{NSForegroundColorAttributeName: BUTTON_TINI_COLOR}];
    _txtPassword.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"パスワード" attributes:@{NSForegroundColorAttributeName: BUTTON_TINI_COLOR}];
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:@"パスワードを忘れた"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    _lblForgotPass.attributedText = attributeString;
}


#pragma mark - action

- (IBAction)actionTermsofUse:(id)sender {
    if(_hasArgeeTermOfUse) {
        _hasArgeeTermOfUse = NO;
        [_btnCheck setImage:[UIImage imageNamed:@"bg_button_no_check"] forState:UIControlStateNormal];
    } else {
        _hasArgeeTermOfUse = YES;
         [_btnCheck setImage:[UIImage imageNamed:@"bg_button_check"] forState:UIControlStateNormal];
    }
}

- (IBAction)actionLogin:(id)sender {
    CategoryViewController *categoryController = [[CategoryViewController alloc] initWithNibName:@"CategoryViewController" bundle:nil];
    [[SlideNavigationController sharedInstance] popAllAndSwitchToViewController:categoryController
                                                          withSlideOutAnimation:YES
                                                                  andCompletion:nil];
}


@end
