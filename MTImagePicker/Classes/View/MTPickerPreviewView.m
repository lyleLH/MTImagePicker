//
//  MTPickerPreviewView.m
//  MTImagePicker
//
//  Created by Tom.Liu on 2021/6/10.
//

#import "MTPickerPreviewView.h"
#import <MTCategoryComponent/MTCategoryComponentHeader.h>
#import "MTImagePreviewCell.h"
@interface MTPickerPreviewView ()<UICollectionViewDelegate,UICollectionViewDataSource>


@property (nonatomic,strong)UICollectionView * collectionView;


@property (nonatomic,strong)NSMutableArray * dataSource;

@end

@implementation MTPickerPreviewView

-(void)layoutSubviews {
    [super layoutSubviews];
    [self.collectionView reloadData];
}
#pragma mark -
#pragma mark - UICollectionViewDelegate,UICollectionViewDataSource
 

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    MTImagePreviewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([MTImagePreviewCell class]) forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor mt_randomColor];
    return  cell;
}



- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{

    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 200);
}

- (UICollectionView *)collectionView {
    if(!_collectionView){
        
        UICollectionViewFlowLayout  *flowLayout= [[UICollectionViewFlowLayout alloc] init];
        flowLayout.minimumLineSpacing = 0.0;
        flowLayout.minimumInteritemSpacing = 0.0;
        
        [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:flowLayout];
        _collectionView.delegate = self;
        _collectionView.dataSource  = self;
        _collectionView.alwaysBounceVertical = NO;
        _collectionView.alwaysBounceHorizontal = NO;
        _collectionView.bounces = NO;
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.showsHorizontalScrollIndicator = NO;
        [_collectionView registerClass:[MTImagePreviewCell class] forCellWithReuseIdentifier:@"MTImagePreviewCell"];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.alwaysBounceVertical = YES;
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
        [self addSubview:_collectionView];
 
        
    }
    return _collectionView;
}



 


@end
