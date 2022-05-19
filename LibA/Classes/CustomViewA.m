//
//  CustomViewA.m
//  LibA
//
//  Created by zhongxiaoming on 5/19/22.
//

#import "CustomViewA.h"
#import "Masonry.h"

@implementation CustomViewA

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = UIColor.orangeColor;
        [self initSubViews];
    }
    return self;
}


- (void)initSubViews {
    UIView *topView = UIView.new;
    topView.backgroundColor = UIColor.redColor;
    [self addSubview:topView];
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.mas_equalTo(0);
        make.height.mas_equalTo(30);
    }];
}


@end
