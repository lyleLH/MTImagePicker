//
//  MTMTImagePickerWireframe.h
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import <Foundation/Foundation.h>

#import "MTImagePicker.h"
#import "MTMTImagePickerPresenter.h"

@class MTMTImagePickerPresenter;

/**
 Module wireframe for the MTImagePicker module.
 */
@interface MTMTImagePickerWireframe : NSObject

@property (nonatomic, strong) MTImagePicker *picker;
@property (nonatomic, strong) MTMTImagePickerPresenter *presenter;

// initialization
- (void)presentSelfFromViewController:(UIViewController *)viewController;

@end
