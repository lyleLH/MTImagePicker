//
//  MTImagePreviewCell.h
//  MTImagePicker
//
//  Created by Tom on 2021/6/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PHAsset;
@interface MTImagePreviewCell : UICollectionViewCell
@property (nonatomic ,strong) UIImageView *photoImageView;

@property (nonatomic,strong) PHAsset *item;
@end

NS_ASSUME_NONNULL_END
