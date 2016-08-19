//
//  UnsplashAPI.m
//  SplashPhotos
//
//  Created by HaoPeng on 16/8/4.
//  Copyright © 2016年 HaoPeng. All rights reserved.
//

#import "UrlHelper.h"

@implementation UrlHelper

+(NSString*)Unsplash
{
return @"https://unsplash.com/";
}

+(NSString*)Host
{
    return @"https://api.unsplash.com";
}

+(NSString*)AppID
{
    return @"df98b7ef42f7084d03867232818a474ffa0967522019cf8a3fb432a2f1d44718";
}

+(NSString*)SecretKey
{
    return @"d8bf6a79566897b00887dd0327a9a7cc5f1ca6cec4c0b44abe509faa91cb9776";
}

#pragma mark urls
+(NSString*)GetPhotosUrl
{
    return [self GetUrlHelper: @"/photos"];
}

+(NSString*)GetCategoriesUrl
{
    return [self GetUrlHelper: @"/categories"];
}

+(NSString*)GetPhotosInCategoryUrl:(int)id
{
    NSString* p = [NSString  stringWithFormat:@"%@%d%@", @"/categories/:", id, @"/photos"];
    return [self GetUrlHelper: p];
}

// helper
+(NSString*)GetUrlHelper:(id)param
{
    return [NSString  stringWithFormat:@"%@%@%@%@", self.Host, param , @"?client_id=", self.AppID];
}

#pragma mark params
// 照片列表
+(NSDictionary*)GetPhotosParamsWithPageNum: (NSInteger) num
{
    NSDictionary *param = [[NSDictionary alloc]
                           initWithObjectsAndKeys:
                           [NSString stringWithFormat: @"%ld", (long)num], @"page",
                           @"30",  @"per_page",
                           @"latest",  @"order_by",
                           nil];
    
    return param;
}

// 分类列表
+(NSDictionary*)GetCategoriesParams
{
    NSDictionary *param = [[NSDictionary alloc]init];
    return param;
}

// 分类中的照片
+(NSDictionary*)GetPhotosInCategoryParamsWithID: (int) id page: (int) num
{
    NSDictionary *param = [[NSDictionary alloc]
                           initWithObjectsAndKeys:
                           [NSString stringWithFormat: @"%d", id], @"id",
                           [NSString stringWithFormat: @"%d", num], @"page",
                           @"30",  @"per_page",
                           nil];
    return param;
}

@end
