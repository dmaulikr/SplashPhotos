//
//  CategoryCollectionViewCell+ConfigureCell.m
//  SplashPhotos
//
//  Created by HaoPeng on 16/8/24.
//  Copyright © 2016年 HaoPeng. All rights reserved.
//

#import <SDWebImage/UIImageView+WebCache.h>
#import "CategoryCollectionViewCell+ConfigureCell.h"
#import "Photo.h"
#import "Urls.h"

@implementation CategoryCollectionViewCell (ConfigureCell)

- (void)configureForPhoto:(Photo *)photo
{
    NSString* url = [[photo urls] small];
    [self.image sd_setImageWithURL:[NSURL URLWithString: url] placeholderImage: nil];
}

@end