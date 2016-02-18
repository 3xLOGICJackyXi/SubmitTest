//
//  CollectionViewCell.m
//  Collection
//
//  Created by JackyX on 7/22/15.
//  Copyright (c) 2015 JackyX. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

//- (void)awakeFromNib {
//    // Initialization code
//    
//    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CollectionViewCell" owner:self options:nil];
//    [self addSubview:[views objectAtIndex:0]];
//}

//- (id)initWithCoder:(NSCoder *)coder
//{
//    self = [super initWithCoder:coder];
//    if (self) {
//        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CollectionViewCell" owner:self options:nil];
//        [self addSubview:[views objectAtIndex:0]];
//        
//        _imageView.contentMode = UIViewContentModeScaleAspectFill;
//        //_imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//    }
//    return self;
//}

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self)
//    {
//        // 初始化时加载collectionCell.xib文件
//        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"CollectionViewCell" owner:self options:nil];
//        
//        // 如果路径不存在，return nil
//        if (arrayOfViews.count < 1) {
//            return nil;
//        }
//        // 如果xib中view不属于UICollectionViewCell类，return nil
//        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]])
//        {
//            return nil;
//        }
//        // 加载nib
//        self = [arrayOfViews objectAtIndex:0];
//    }
//    
//    return self;
//}



- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    if (highlighted) {
        _imageView.alpha = .7f;
    }else {
        _imageView.alpha = 1.f;
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    NSLog(@"%@", NSStringFromCGRect(self.frame));
    NSLog(@"jfaklsjflasd");
}

@end
