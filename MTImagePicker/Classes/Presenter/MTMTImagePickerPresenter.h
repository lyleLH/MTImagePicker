//
//  MTMTImagePickerPresenter.h
//  MTImagePicker
//
//  Created by MTTGCC on 10/06/21.
//
//

#import <Foundation/Foundation.h>

#import "MTMTImagePickerModuleInterface.h"

#import "MTMTImagePickerInteractor.h"
#import "MTMTImagePickerWireframe.h"
#import "MTMTImagePickerViewInterface.h"

@class MTMTImagePickerWireframe;
@class MTMTImagePickerInteractor;

/**
 Display logic for the MTImagePicker module.
 */
@interface MTMTImagePickerPresenter : NSObject <MTMTImagePickerModuleInterface>

@property (nonatomic, strong) MTMTImagePickerInteractor *interactor;
@property (nonatomic, weak) MTMTImagePickerWireframe *wireframe;

@property (nonatomic, weak) UIViewController<MTMTImagePickerViewInterface> *userInterface;

@end
