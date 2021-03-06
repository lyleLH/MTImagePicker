//
//  MTImagePickerDataManager.m
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import "MTImagePickerDataManager.h"

#import <MobileCoreServices/MobileCoreServices.h>
#import <AVFoundation/AVFoundation.h>
#import <Photos/Photos.h>

@interface MTImagePickerDataManager ()
@property (nonatomic ,strong) PHFetchResult *imageAssetsResult;

@end


@implementation MTImagePickerDataManager

- (PHFetchResult *)imageAssetsResult {
    if(!_imageAssetsResult){
        _imageAssetsResult = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:nil];
    }
    return _imageAssetsResult;
}

 

- (NSArray<MTImageModel *> *)imageModels {
    if(!_imageModels){
        NSMutableArray *assets = [NSMutableArray new];
        for (PHAsset *asset in self.imageAssetsResult){
            MTImageModel * model  = [[MTImageModel alloc]initWithImageAsset:asset];
            [assets insertObject:model atIndex:0];
        }
        _imageModels = assets;
    }
    return _imageModels;
}

- (NSMutableArray<MTImageModel *> *)selectedImageModels {
    if(!_selectedImageModels){
        _selectedImageModels = [NSMutableArray new];
    }
    return _selectedImageModels;
}

- (NSArray<UIImage *> *)selectedImages {
    
    NSMutableArray * pureImages = [NSMutableArray new];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc]init];
    options.resizeMode = PHImageRequestOptionsResizeModeFast;
    [self.selectedImageModels enumerateObjectsUsingBlock:^(MTImageModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [[PHImageManager defaultManager]requestImageForAsset:obj.asset targetSize:[UIScreen mainScreen].bounds.size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
            [pureImages addObject:result];
        }];
    }];
    return [NSArray arrayWithArray:pureImages];
    
}
@end
