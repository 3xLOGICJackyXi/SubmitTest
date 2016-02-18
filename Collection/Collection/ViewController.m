//
//  ViewController.m
//  Collection
//
//  Created by JackyX on 7/22/15.
//  Copyright (c) 2015 JackyX. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSMutableArray *photosArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    [self setupPhotosArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupPhotosArray
{
    [_photosArray removeAllObjects];
    _photosArray = nil;
    _photosArray = [NSMutableArray array];
    for (NSInteger i = 1; i <= 6; i++) {
        NSString *photoName = [NSString stringWithFormat:@"%ld.jpg",(long)i];
        UIImage *photo = [UIImage imageNamed:photoName];
        [_photosArray addObject:photo];
    }
}


-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(1, 1, 1, 1);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 1.0f;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 1.0f;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(158, 150);
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    NSLog(@"%@", NSStringFromCGRect(self.collectionView.frame));
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _photosArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"CollectionViewCell";
    //CollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
//    [cell.imageView removeFromSuperview];
//    cell.imageView.frame = cell.bounds;
//    cell.imageView.image = _photosArray[indexPath.item];
//    [cell.contentView addSubview:cell.imageView];
    
    
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    CollectionViewCell *defaultCell = (CollectionViewCell *)cell;
    defaultCell.imageView.image = _photosArray[indexPath.item];
    
    return cell;
}

@end
