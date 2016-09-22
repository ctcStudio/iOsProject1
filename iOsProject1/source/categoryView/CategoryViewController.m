//
//  CategoryViewController.m
//  iOsProject1
//
//  Created by ntq on 9/22/16.
//  Copyright © 2016 HungHN. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryViewCell.h"

@interface CategoryViewController ()
@end

static NSString *categoryCellIdentifier = @"categoryViewCellId";

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView registerNib:[UINib nibWithNibName:@"CategoryViewCell" bundle:nil] forCellReuseIdentifier:categoryCellIdentifier];
    CategoryViewCell *cell = [tableView dequeueReusableCellWithIdentifier:categoryCellIdentifier forIndexPath:indexPath];
    
    if(!cell) {
        cell = [[CategoryViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:categoryCellIdentifier];
    }
    
    return cell;
}

- (IBAction)openRightMenu:(id)sender {
    SlideNavigationController *slideNavigation = [SlideNavigationController sharedInstance];
    if ([slideNavigation isMenuOpen])
        [slideNavigation closeMenuWithCompletion:nil];
    else
        [slideNavigation openMenu:MenuRight withCompletion:nil];
}


@end
