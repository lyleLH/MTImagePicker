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


- (NSArray *)getImageAssets {
    self.imageAssetsResult = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:nil];
    NSMutableArray *assets = [NSMutableArray new];
    for (PHAsset *asset in self.imageAssetsResult){
        [assets insertObject:asset atIndex:0];
    }
    return assets;
}


@end
