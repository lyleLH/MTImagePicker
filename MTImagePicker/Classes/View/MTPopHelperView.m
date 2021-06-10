//
//  MTPopHelperView.m
//  MTImagePicker
//
//  Created by Tom.Liu on 2021/6/10.
//

#import "MTPopHelperView.h"
#import <pop/POP.h>
#import <MTLayoutUtilityComponent/MTMasConstraintMaker.h>
@interface MTPopHelperView ()
@property (nonatomic,strong) UIView *bgView;
@property (nonatomic,strong) UIView *popContentView;
@end

@implementation MTPopHelperView


- (void)tapGesturedDetected:(UITapGestureRecognizer *)recognizer {
    [self hideContentView];
}

- (void)hideContentView {
    [UIView animateWithDuration:0.2f animations:^{
        
        self.bgView.alpha       = 0.f;
        self.popContentView.alpha     = 0.f;
        self.popContentView.transform = CGAffineTransformMakeTranslation(0, self.frame.size.height);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
}

- (void)showPopContentView:(UIView*)view {
    [self.bgView setFrame:self.bounds];
    [self addSubview: view];
    self.popContentView  = view;
    
    CGFloat height = [UIScreen mainScreen].bounds.size.height*(331.0/667.0);
    [self.popContentView setFrame:CGRectMake(0, CGRectGetMaxY(self.frame), CGRectGetWidth(self.frame),height)];
    
//    NSLog(@"in view -- %@",NSStringFromCGRect(self.frame));
    
    [UIView animateWithDuration:0.3f animations:^{
        self.bgView.alpha = 0.25f;
    }];
    
    POPSpringAnimation *positionY = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    positionY.toValue             =  @(self.popContentView.frame.origin.y - self.popContentView.frame.size.height*0.5);
    positionY.dynamicsTension     = 1000;
    positionY.dynamicsMass        = 1.3;
    positionY.dynamicsFriction    = 10.3;
    positionY.springSpeed         = 20;
    positionY.springBounciness    = 10;
    
//    [positionY setCompletionBlock:^(POPAnimation *anim, BOOL finished) {
//        NSLog(@"%@",NSStringFromCGRect(self.shareview.frame));
//    }];
    [self.popContentView.layer pop_addAnimation:positionY forKey:nil];
    
}



//- (YKShareView *)shareview {
//    if(!_shareview){
//        YKShareView * shareView = [[YKShareView alloc] init];
//        if([self.dataSourceDelegate respondsToSelector:@selector(shareViewDataSource)]){
//            if([self.dataSourceDelegate shareViewDataSource].count>0){
//                shareView.datasource = [NSMutableArray arrayWithArray:[self.dataSourceDelegate shareViewDataSource]];
//            }
//
//        }
//        [shareView setUpShareView];
//        shareView.shareViewDelegate = self;
//        _shareview = shareView;
//        [self addSubview: _shareview];
//    }
//    return _shareview;
//}
//


-(UIView *)bgView {
    if(!_bgView){
        UIView * bgView = [[UIView alloc] initWithFrame:CGRectZero];
        bgView.backgroundColor = [UIColor blackColor];
        bgView.alpha = 0.0;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesturedDetected:)];
        [bgView addGestureRecognizer:tapGesture];
        _bgView = bgView;
        [self addSubview: _bgView];
        
    }
    return _bgView;
}



- (void)shareView:(nonnull UIView *)view cancleSelectClicked:(nonnull UIButton *)button {
    [self hideContentView];
    
}

- (void)shareView:(nonnull UIView *)view didselectedShareItemIndex:(nonnull NSIndexPath *)indexPath {

//    if([self.eventDelegate respondsToSelector:@selector(shareHelperView:didselectedShareItemIndex:)]){
//        [self.eventDelegate shareHelperView:self didselectedShareItemIndex:indexPath];
//    }
    [self hideContentView];
    
    
    
   
}

@end
