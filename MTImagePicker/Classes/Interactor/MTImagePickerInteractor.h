//
//  MTImagePickerInteractor.h
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import <Foundation/Foundation.h>


@class MTImagePickerPresenter;
@class MTMTImagePickerDataManager;
/**
 Business logic for the MTImagePicker module.
 */
@interface MTImagePickerInteractor : NSObject

@property (nonatomic, weak) MTImagePickerPresenter *presenter;
@property (nonatomic, strong) MTMTImagePickerDataManager *dataManager;

@end
