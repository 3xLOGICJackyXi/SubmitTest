//
//  CollectionViewCell.h
//  Collection
//
//  Created by JackyX on 7/22/15.
//  Copyright (c) 2015 JackyX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UILabel *label;
@property (retain, nonatomic) IBOutlet UILabel *errorLabel;
@property (retain, nonatomic) IBOutlet UILabel *timeLabel;
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *activeView;
@property (retain, nonatomic) IBOutlet UIImageView *ptzView;
@property (retain, nonatomic) IBOutlet UIImageView *posView;
@property (retain, nonatomic) IBOutlet UIImageView *dioView;

@end
