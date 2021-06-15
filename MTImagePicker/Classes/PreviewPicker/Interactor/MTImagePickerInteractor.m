//
//  MTImagePickerInteractor.m
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import "MTImagePickerInteractor.h"
#import "MTImagePickerPresenter.h"
#import "MTImagePickerDataManager.h"

@implementation MTImagePickerInteractor


- (NSArray *)getImagesPrepared {
    return   [self.dataManager getImageAssets];
}


- (MTImagePickerDataManager *)dataManager {
    if(!_dataManager){
        _dataManager = [[MTImagePickerDataManager alloc] init];
    }
    return _dataManager;
}

@end
