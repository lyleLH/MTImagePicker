//
//  MTMTImagePickerInteractor.h
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import <Foundation/Foundation.h>

#import "MTMTImagePickerPresenter.h"
#import "MTMTImagePickerDataManager.h"

@class MTMTImagePickerPresenter;

/**
 Business logic for the MTImagePicker module.
 */
@interface MTMTImagePickerInteractor : NSObject

@property (nonatomic, weak) MTMTImagePickerPresenter *presenter;
@property (nonatomic, strong) MTMTImagePickerDataManager *dataManager;

@end
