//
//  JWCategoryView.m
//  ShopHugBackStageManage
//
//  Created by apple on 2017/8/24.
//  Copyright © 2017年 fenger. All rights reserved.
//

#import "JWCategoryView.h"

@implementation JWCategoryView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithTitle:(NSString *)titles ImageName:(NSString *)imageName TitleWidth:(CGFloat)width{
    
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 5;
        self.layer.borderColor = [UIColor lightGrayColor].CGColor;
        self.layer.borderWidth = 1.0;
        [self setupUIWithTitle:titles ImageName:imageName TitleWidth:width];
        
    }
    
    
    
    return self;
    
}
-(void)setupUIWithTitle:(NSString *)titles ImageName:(NSString *)imageName TitleWidth:(CGFloat)width{


    self.imgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    self.name = [[UILabel alloc]init];
    [self.name LabelSetupWithTextColor:[UIColor blackColor] Font:[UIFont systemFontOfSize:12] Title:titles TextAlignment:NSTextAlignmentCenter];
    
    [self sd_addSubviews:@[_imgV,_name]];
    
    
    
    
    
    
    
    _name.sd_layout
    .centerYEqualToView(self)
    //.leftSpaceToView(self, 5)
    //.rightSpaceToView(self, 5)
    .centerXEqualToView(self)
    .heightIs(21)
    .widthIs(width);
    
    
    _imgV.sd_layout
    .centerYEqualToView(self)
    //.rightSpaceToView(self, 5)
    .leftSpaceToView(_name, 0)
    .heightIs(11)
    .widthIs(11);
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    
    [self addGestureRecognizer:tap];
    

}
#pragma mark - 手势
-(void)tap{
    
    if (self.tapBlock) {
        self.tapBlock();
    }


}
@end
