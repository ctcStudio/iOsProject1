//
//  SplashViewController.m
//  iOsProject1
//
//  Created by ntq on 9/21/16.
//  Copyright © 2016 HungHN. All rights reserved.
//

#import "SplashViewController.h"
#import "LoginViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)actionLogin:(id)sender {
    LoginViewController *loginController = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:loginController
                                                          withSlideOutAnimation:YES
                                                                  andCompletion:nil];
}

@end
