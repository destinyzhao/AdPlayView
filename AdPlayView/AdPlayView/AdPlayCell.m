//
//  AdPlayCell.m
//  AdPlayView
//
//  Created by Alex on 16/3/17.
//  Copyright © 2016年 Alex. All rights reserved.
//

#import "AdPlayCell.h"
#import "UIImageView+WebCache.h"

@implementation AdPlayCell

-(instancetype)init
{
    if (self = [super init]) {
        [self setUpSubViews];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setUpSubViews];
    }
    return self;
}

/**
 *  初始化
 */
- (void)setUpSubViews
{
    _adImageView = [[UIImageView alloc]init];
    _adImageView.contentMode = UIViewContentModeScaleAspectFill;
    _adImageView.clipsToBounds = YES;
    _adImageView.backgroundColor = [UIColor redColor];
    [self addSubview:_adImageView];
    
    _titleLabe = [[UILabel alloc]init];
    [self addSubview:_titleLabe];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _adImageView.frame = self.bounds;
}

/**
 *  设置对象更新UI
 *
 *  @param adPlayModel 广告对象
 */
- (void)setAdPlayModel:(AdPlayModel *)adPlayModel
{
    _adPlayModel = adPlayModel;
    [self.adImageView sd_setImageWithURL:[NSURL URLWithString:_adPlayModel.imgUrl] placeholderImage:[UIImage imageNamed:@"ad_placeholder_Image"]];
    self.titleLabe.text = adPlayModel.tittle;

}

@end
