//
//  MTPickerPreviewView.m
//  MTImagePicker
//
//  Created by Tom.Liu on 2021/6/10.
//

#import "MTPickerPreviewView.h"

@interface MTPickerPreviewView ()<UICollectionViewDelegate,UICollectionViewDataSource>


@property (nonatomic,strong)UICollectionView * collectionView;
@property (nonatomic,strong)UIButton * cancleButton;
@property (nonatomic,strong)UIButton * cameraButton;
@property (nonatomic,strong)UIButton * photosButton;


@property (nonatomic,strong)NSMutableArray * dataSource;

@end

@implementation MTPickerPreviewView

#pragma mark -
#pragma mark - UICollectionViewDelegate,UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([UICollectionViewCell class]) forIndexPath:indexPath];
    return  cell;
}


//
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//
//    return <#CGSizeMake(SCREEN_WIDTH, 60)#>;
//}
//
//
//
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
//    return <#CGSizeMake(SCREEN_WIDTH,43)#>;
//
//}
//
//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
//    if(indexPath.section<2){
//        if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
//            <#SYTMerchantRateEditHeaderView#> *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:NSStringFromClass([<#SYTMerchantRateEditHeaderView#> class]) forIndexPath:indexPath];
//            return  header;
//        } else if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
//
//
//        }
//    }
//    return nil;
//}
//
//-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
//{
//    if(section==2){
//        return UIEdgeInsetsMake(25, 0, 20, 0);
//    }
//    return UIEdgeInsetsMake(0, 0, 0, 0);
//}
//
//- (UIView*)findFirstResponderBeneathView:(UIView*)view {
//    // Search recursively for first responder
//    for ( UIView *childView in view.subviews ) {
//        if ( [childView respondsToSelector:@selector(isFirstResponder)] && [childView isFirstResponder] )
//            return childView;
//        UIView *result = [self findFirstResponderBeneathView:childView];
//        if ( result )
//            return result;
//    }
//    return nil;
//}


- (UICollectionView *)collectionView {
    if(!_collectionView){
        
        UICollectionViewFlowLayout  *flowLayout= [[UICollectionViewFlowLayout alloc] init];
        flowLayout.minimumLineSpacing = 0.0;
        flowLayout.minimumInteritemSpacing = 0.0;
        
        [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:flowLayout];
        _collectionView.delegate = self;
        _collectionView.dataSource  = self;
        [_collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([UICollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:NSStringFromClass([UICollectionViewCell class])];
  
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.alwaysBounceVertical = YES;
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
        [self addSubview:_collectionView];
 
        
    }
    return _collectionView;
}



 


@end
