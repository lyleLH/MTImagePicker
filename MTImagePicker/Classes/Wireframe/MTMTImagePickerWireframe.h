//
//  MTMTImagePickerWireframe.h
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import <Foundation/Foundation.h>

#import "MTImagePicker.h"
#import "MTImagePickerPresenter.h"

@class MTImagePickerPresenter;

/**
 Module wireframe for the MTImagePicker module.
 */
@interface MTMTImagePickerWireframe : NSObject

@property (nonatomic, strong) MTImagePicker *picker;
@property (nonatomic, strong) MTImagePickerPresenter *presenter;

// initialization
- (void)presentSelfFromViewController:(UIViewController *)viewController;

@end
