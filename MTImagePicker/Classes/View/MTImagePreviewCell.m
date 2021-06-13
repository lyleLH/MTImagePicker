//
//  MTImagePreviewCell.m
//  MTImagePicker
//
//  Created by Tom on 2021/6/13.
//

#import "MTImagePreviewCell.h"
#import <Photos/PHImageManager.h>


@implementation MTImagePreviewCell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.photoImageView];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.photoImageView.frame = self.contentView.bounds;
}

- (void)setItem:(PHAsset *)item{
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc]init];
    options.resizeMode = PHImageRequestOptionsResizeModeFast;
    [[PHImageManager defaultManager]requestImageForAsset:item targetSize:[UIScreen mainScreen].bounds.size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        self.photoImageView.image = result;
    }];
}

- (UIImageView *)photoImageView{
    if (!_photoImageView) {
        _photoImageView = [[UIImageView alloc]initWithFrame:self.contentView.bounds];
        _photoImageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _photoImageView;
}

@end
