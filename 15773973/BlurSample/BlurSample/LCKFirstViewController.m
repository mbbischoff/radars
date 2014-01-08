//
//  LCKFirstViewController.m
//  BlurSample
//
//  Created by Matthew Bischoff on 1/8/14.
//  Copyright (c) 2014 Lickability. All rights reserved.
//

#import "LCKFirstViewController.h"

@interface LCKFirstViewController ()

@end

@implementation LCKFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 150;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.image = [UIImage animatedImageNamed:@"Screenshot" duration:0.2];

    [cell.contentView addSubview:imageView];
    return cell;
}

@end
