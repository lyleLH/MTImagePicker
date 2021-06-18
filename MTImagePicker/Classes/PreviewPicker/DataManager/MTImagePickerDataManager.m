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
@end
