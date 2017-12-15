//
//  JWCategoryView.h
//  ShopHugBackStageManage
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^JWCategoryViewTapBlock) ();

@interface JWCategoryView : UIView
@property (nonatomic ,strong) UIImageView * imgV;
@property (nonatomic ,strong) UILabel * name;

@property (nonatomic ,copy) JWCategoryViewTapBlock tapBlock;

-(instancetype)initWithTitle:(NSString *)titles ImageName:(NSString *)imageName TitleWidth:(CGFloat)width;
@end
