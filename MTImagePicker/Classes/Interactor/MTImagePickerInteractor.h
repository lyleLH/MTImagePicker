//
//  MTImagePickerInteractor.h
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import <Foundation/Foundation.h>

#import "MTImagePickerPresenter.h"
#import "MTMTImagePickerDataManager.h"

@class MTImagePickerPresenter;

/**
 Business logic for the MTImagePicker module.
 */
@interface MTImagePickerInteractor : NSObject

@property (nonatomic, weak) MTImagePickerPresenter *presenter;
@property (nonatomic, strong) MTMTImagePickerDataManager *dataManager;

@end
