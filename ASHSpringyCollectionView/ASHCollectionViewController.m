//
//  ASHCollectionViewController.m
//  ASHSpringyCollectionView
//
//  Created by Ash Furrow on 2013-08-12.
//  Copyright (c) 2013 Ash Furrow. All rights reserved.
//

#import "ASHCollectionViewController.h"

@interface ASHCollectionViewController ()

@end

@implementation ASHCollectionViewController

static NSString *CellIdentifier = @"Cell";

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CellIdentifier];
    self.collectionView.backgroundColor = [UIColor whiteColor];
}

#pragma mark - UICollectionViewDataSource Methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10000;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
//    cell.backgroundColor = [UIColor orangeColor];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(-10,-10,64, 64)];
    view.layer.cornerRadius = 32;
    view.layer.borderWidth = 0.5;
    view.layer.borderColor = [[UIColor blueColor] CGColor];
    [cell addSubview:view];
    
    return cell;
}

@end
